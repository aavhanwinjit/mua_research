import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/decryption.dart';
import 'package:ekyc/core/helpers/encryption.dart';
import 'package:ekyc/core/helpers/generate_key_iv.dart';
import 'package:ekyc/core/helpers/request_generator.dart';
import 'package:ekyc/models/device_info/device_info_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EncryptionHelper {
  static String generateRandomAlphaNumeric() {
    const String alphaNumericChars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

    Random random = Random();
    StringBuffer buffer = StringBuffer();

    for (int i = 0; i < 15; i++) {
      int randomIndex = random.nextInt(alphaNumericChars.length);
      buffer.write(alphaNumericChars[randomIndex]);
    }

    return buffer.toString();
  }

  static String computeSha256Hash(String input) {
    final digest = sha256.convert(input.codeUnits);

    // Convert Digest to a hexadecimal string
    return digest.toString();
  }

  static Map<String, dynamic> encrypt(
      {required Map<String, dynamic>? plainData,
      required DeviceInfoModel deviceInfoModel,
      required String serviceRequestURL}) {
    String? encodedText;

    // String serviceRequestId = serviceRequestURL.substring(1);
    // String appVersion = deviceInfoModel.appVersion!;
    // String platform = deviceInfoModel.platform!;
    // String modelName = deviceInfoModel.model!;
    // String osVersion = deviceInfoModel.osVersion!;
    // String ip = deviceInfoModel.ipAddress!;
    // String customer = "Agent";
    // String journeyId = generateRandomAlphaNumeric();
    // String? channelId;
    // String languageId = "1";

    String sequence = "3210";
    String deviceId = deviceInfoModel.deviceId!;
    String requestUUID = generateRandomAlphaNumeric();
    const sessionId = null;
    // DateTime.now().millisecondsSinceEpoch.toString();
    final String timeStamp =
        DateFormat("yyyyMMddhhmmss").format(DateTime.now().toUtc());
    final index = Random().nextInt(15);

    // if (plainData != null) {
    BodyObject bodyObject = BodyObject(
        rb: plainData ?? '''''',
        checkSum: computeSha256Hash(
            plainData == null ? '''''' : json.encode(plainData)));

    final key = GenerateKeyIv.generate(
        '$sessionId$requestUUID$deviceId$timeStamp', index, sequence, 32);
    final iv = GenerateKeyIv.generate(
        '$deviceId$requestUUID$sessionId$timeStamp', index, sequence, 16);

    final cipherText = Encryption.encryptAESCBCPKCS7(
        Uint8List.fromList(key.codeUnits),
        Uint8List.fromList(iv.codeUnits),
        Uint8List.fromList(json.encode(bodyObject.toJson()).codeUnits));

    encodedText = base64Encode(cipherText);
    // }

    final Map<String, dynamic> response =
        getIt<RequestGenerator>().generateHeaderObject(
      serviceRequestURL: serviceRequestURL,
      journeyID: generateRandomAlphaNumeric(),
      requestUUID: requestUUID,
      index: index,
      sessionId: sessionId,
      timeStamp: timeStamp,
      encodedText: encodedText,
      deviceInfoModel: deviceInfoModel,
    );

    // Map<String, dynamic> response = {
    //   "h": {
    //     "di": {"d": deviceId, "a": appVersion, "p": platform, "m": modelName, "o": osVersion, "i": ip},
    //     "mk": {
    //       "r": requestUUID,
    //       "i": index.toString(),
    //       "sr": serviceRequestId,
    //       "c": customer,
    //       "j": journeyId,
    //       "ci": channelId,
    //       "l": languageId,
    //       "s": sessionId,
    //       "t": timeStamp
    //     }
    //   },
    //   "b": encodedText
    // };

    final encryptedData = response;

    debugPrint('******************* ENCRYPTED REQUEST ***********************');
    debugPrint(json.encode(encryptedData).toString());
    debugPrint('******************* ***************** ***********************');

    return encryptedData;
  }

  static Map<String, dynamic> decrypt(
      {required String cipherText,
      required String deviceID,
      required String requestUUID,
      required String sessionId,
      required String timestamp,
      required int index}) {
    Map<String, dynamic> decodedData = {};

    String sequence = "3210";
    // String? deviceID = '918794c4-a479-36ad-949d-8c631c260a6b';
    // String? requestUUID = '1624521819414qj7ld';
    // String sessionId = "a6c8b7af-170620914305603";
    // String timeStamp = "20240125012903";
    String formattedPasswordString =
        '$sessionId$requestUUID$deviceID$timestamp';
    String password =
        GenerateKeyIv.generate(formattedPasswordString, index, sequence, 32);
    String formattedivString = '$deviceID$requestUUID$sessionId$timestamp';
    final iv = GenerateKeyIv.generate(formattedivString, index, sequence, 16);

    // String encryptedData =
    // "06csnwESZWTRu4BkJWOO6w4yrF/pmwupVW3q5OgpRX0wOYgd58U4Xy45cWmDeslyij7AFg2YI7GRshUOa9uJGn+qjUmAEPCXhIL+xRNDp6ubT/laV3qs8nBTGeKu/nZNLHBjT2QLOOSpZTFnHBH/9R8tV4hQPfzlV9C3terCvOACrWQDhNfbQOHiBjwGoTSlGwkl5I3OuDAuFoHFKtM1K2j6HINuAwt7Q6NUU8OGPHo=";
    final decryptedData = Decryption.decryptData(
      Uint8List.fromList(password.codeUnits),
      Uint8List.fromList(iv.codeUnits),
      base64.decode(cipherText),
    );
    // dev.log('Decrypted Data: $decryptedData');

    decodedData = json.decode(utf8.decode(decryptedData));
    return decodedData;
  }
}

class BodyObject {
  dynamic rb;
  String checkSum;

  BodyObject({required this.rb, required this.checkSum});

  factory BodyObject.fromJson(Map<String, dynamic> json) {
    return BodyObject(
      rb: json['rb'],
      checkSum: json['checkSum'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rb': rb,
      'checkSum': checkSum,
    };
  }
}
