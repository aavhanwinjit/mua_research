import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:ekyc/core/helpers/decryption.dart';
import 'package:ekyc/core/helpers/encryption.dart';
import 'package:ekyc/core/helpers/generate_key_iv.dart';
import 'package:ekyc/models/device_info/device_info_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EncryptionHelper {
  static String generateRandomAlphaNumeric() {
    const String alphaNumericChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

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

  static encrypt(
      {required Map<String, dynamic> plainData,
      required DeviceInfoModel deviceInfoModel,
      required String serviceRequestURL}) {
    String encodedText = "";
    String serviceRequestId = serviceRequestURL.substring(1);
    String appVersion = deviceInfoModel.appVersion!;
    String platform = deviceInfoModel.platform!;
    String modelName = deviceInfoModel.model!;
    String osVersion = deviceInfoModel.osVersion!;
    String ip = deviceInfoModel.ipAddress!;
    // String customer = "Customer";
    String customer = "Agent";
    // String journeyId = "1624521806YQkAr";
    String journeyId = generateRandomAlphaNumeric();
    // String channelId = "";
    String languageId = "1";

    BodyObject bodyObject = BodyObject(rb: plainData, checkSum: computeSha256Hash(json.encode(plainData)));

    String sequence = "3210";
    String deviceId = deviceInfoModel.deviceId!;
    // String requestUUID = "1624521819414qj7ld";
    String requestUUID = generateRandomAlphaNumeric();
    // const String sessionId = "1707392469778";
    // const String sessionId = "029e0475-170808229105871";
    final String sessionId = DateTime.now().millisecondsSinceEpoch.toString();
    // const String timeStamp = "20240216054811";
    final String timeStamp = DateFormat("yyyyMMddhhmmss").format(DateTime.now().toUtc());
    final index = Random().nextInt(15);
    final key = GenerateKeyIv.generate('$sessionId$requestUUID$deviceId$timeStamp', index, sequence, 32);
    final iv = GenerateKeyIv.generate('$deviceId$requestUUID$sessionId$timeStamp', index, sequence, 16);
    final cipherText = Encryption.encryptAESCBCPKCS7(Uint8List.fromList(key.codeUnits),
        Uint8List.fromList(iv.codeUnits), Uint8List.fromList(json.encode(bodyObject.toJson()).codeUnits));

    encodedText = base64Encode(cipherText);
    Map<String, dynamic> response = {
      "h": {
        "di": {"d": deviceId, "a": appVersion, "p": platform, "m": modelName, "o": osVersion, "i": ip},
        "mk": {
          // "r": "1624521819414qj7ld",
          "r": requestUUID,
          // "i": 1.toString(),
          "i": index.toString(),
          "sr": serviceRequestId,
          // "c": "Customer",
          "c": customer,
          // "j": "1624521806YQkAr",
          "j": journeyId,
          "ci": null,
          "l": languageId,
          // "s": "029e0475-170808229105871",
          "s": sessionId,
          // "t": "20240216054839",
          "t": timeStamp
        }
      },
      // "b":
      //     "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",
      "b": encodedText
    };

    final encryptedData = response;
    debugPrint("Encrypted map:");
    debugPrint(encryptedData.toString());

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
    String formattedPasswordString = '$sessionId$requestUUID$deviceID$timestamp';
    String password = GenerateKeyIv.generate(formattedPasswordString, index, sequence, 32);
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
