import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart' as crypto;
import 'package:ekyc/models/device_info/device_info_model.dart';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/export.dart';

class RequestHeaderGenerator {
  final DeviceInfoModel deviceInfoModel;

  RequestHeaderGenerator({required this.deviceInfoModel});

  Future generateMessageKeyModel() async {
    final DeviceInfoModel deviceInfo = deviceInfoModel;

    const String requestUUID = "1624521819414qj7ld, a23a5494-cc56-4ae3-a2ed-cdcd59acc23a_2024012316365815";

    const String serviceRequest = "AgentAPI/AppStarts/LaunchDetails";

    const String channelId = "Agent";

    const String journeyId = "fa71c4eb-170602780284924";

    const String sessionId = "fa71c4eb-170602780284924";

    const int index = 3;
    // final int index = generateIndex();

    const String languageId = "1";

    const String timestamp = "20240123110937";
    // final String timestamp = DateTime.now().millisecondsSinceEpoch.toString();

    const String deviceId = "918794c4-a479-36ad-949d-8c631c260a6b";
    // final String deviceId = deviceInfo.deviceId ?? "";

    const String sequence = "3210";

    const String masterKeyPassword = "$sessionId$requestUUID$deviceId$timestamp";

    const String masterKeyIv = "$deviceId$requestUUID$sessionId$timestamp";

    // final String password =
    //     createPassword(masterKey: masterKeyPassword, index: index, sequence: sequence, finalKeyLength: 32);
    final String password = createPassword(
        masterKey: '$sessionId$requestUUID$deviceId', index: index, sequence: sequence, finalKeyLength: 32);

    // debugPrint("password: $password");

    final String iv = createPassword(masterKey: masterKeyIv, index: index, sequence: sequence, finalKeyLength: 16);
    // print("iv: $iv");

    final body = {"rootedDevice": false, "deviceToken": "499dddb0-5ab1-4d04-90b6-87aadd4599ee"};

    final jsonBody = jsonEncode(body);

    // final encryptedText = encrypt(jsonBody, password);

    // debugPrint("jsonBody: $jsonBody");

    // MWEncryptDecrypt.encReq(
    //   deviceId: deviceId,
    //   requestUUID: requestUUID,
    //   serviceRequestId: serviceRequest,
    //   sessionId: sessionId,
    //   timeStamp: timestamp,
    //   requestBody: jsonBody,
    // );

    MWEncryptDecrypt().DycResponse(
      deviceId: deviceId,
      requestUUID: requestUUID,
      serviceRequestId: serviceRequest,
      sessionId: sessionId,
      timeStamp: timestamp,
      requestBody:
          "dXfwFzaKLvxqFiuGpfwoeig3XrRS15wXdp6b4CZblyJCZrCv4op5xUPX0U3yvRC9Ji9U4KI2TuWzwOitbC/g8+eFRTCeZwPqK+2BkP/22SJGqgOx7JdM0waBQ3yr3C2VNGEKAjPoksUZ/7sTu3lINm1sQ2KGR3f2iiMYWZyHdl0icL4AH7S71Kecr0Lv6pybVvyGLyF5IXh/ymlBwunv46xF2eouw+WAspquKCFwzTiCeKOobfjqq6hrF+selO7ItSpRBs4Ch7hcEme4CM5FahGAuIBC3WtJTU4MuVkqXD7VTurUoKmnLN63jx8FZaxDUxpD0dIpMpgeNrSLVxR8je4BOJjgNlnosB631W8LuqiRVzUDdqhy//l7XO6xZo2Lc1ZtV0efAWBBTqkVFNAsjXzoIuwFCXPmUowzmjUUIjUUuvmere/vxgmDgFbH2EHuRiIXrNK5dS8xJS+XUbG2yMIno9C/Gqhl88l85pp+bdlmTBN3BUjH+MBWbfu7JojKTRYk74uq+xMJgra+Jr9NfvweTHjjrFAr2OOTnzee6rUdgBOoWiFXTicwCz8etvfPWYX0uk2Yw5q/IQt7R6fi0RNC0+dB+Is1e6b1uQxejl9HCqDun5pzpnjWQmf/sm+38Cz4BOTq6wOyo6CejB4jj4RRPSgBluyb/7bQOZTPwzrE4Z4ZBFzmtRaui5Smv81MVimUcH9atBII4fsKZoJzhwBFGiN03Rqhz/uU0TmiMIg3SPL+kG5FPwoHhUYghVBK3IJgY6pPUIcKjrwfPYPGGamQgylI5LbMiFoKpaJa1cEd7SbQOXEq3IfncSrT1TvluIVYXk6Ym3jdmjtDQswNPosmf7/1EuUVLSAB5TQ/ODoM6i1t9jTcu/NT0owS60PmocVyYXxkKkzzyZlSsPmebLbQCnCKSgVTR0Wi9kUADjjZy6YlqOagborP/EKHJC/F6xQYuIpfBBT6n65gVe9UhD3mteMeBQ5KcDCGfIVUsg+lsyUleS7X3ajn2lJ6+H+dPXIYIQDYaTsIujFXgBv4oO1exc0mQ3mha8x+uShTAcxKTYc4mbXC5JWIStr4FRRtjnZ9A+kviCUoIE8KEvpI6elPtjf2cEAT7T7E0+Ba0vWdRNZcvog/Lu71UsWsQyaEJHWr4B8xoEj5J6W0eQqY+Q==",
      iv: iv,
      password: password,
    );
  }

  String encrypt(String plainText, String password) {
    final key = Key.fromUtf8(password);
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key, mode: AESMode.cbc, padding: "PKCS7"));

    final encrypted = encrypter.encrypt(plainText, iv: iv);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);

    print("encrypted: ${encrypted.base64}");
    print("decrypted: $decrypted");

    return encrypted.base64;
  }

  // static String encrypt({required String data, required String password, String? iv}) {
  //   try {
  //     final Uint8List inputBytes = Uint8List.fromList(utf8.encode(data));
  //     final Uint8List keyBytes = Uint8List.fromList(utf8.encode(password));

  //     final CipherParameters keyParams = KeyParameter(keyBytes);

  //     BlockCipher cipher = PaddedBlockCipherImpl(
  //       PKCS7Padding(),
  //       CBCBlockCipher(AESEngine()),
  //     );

  //     ParametersWithIV params;
  //     if (iv != null) {
  //       final Uint8List ivBytes = Uint8List.fromList(utf8.encode(iv));
  //       params = ParametersWithIV(keyParams, ivBytes);
  //     } else {
  //       params = ParametersWithIV(keyParams, Uint8List(16));
  //     }
  //     cipher.init(true, params);
  //     Uint8List encryptedBytes = cipher.process(inputBytes);
  //     String base64EncryptedOutputString = base64Encode(encryptedBytes);
  //     return base64EncryptedOutputString;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  static String computeSha256Hash(String input) {
    crypto.Digest digest = crypto.sha256.convert(utf8.encode(input));
    return digest.toString();
  }

  static int generateIndex() {
    return Random().nextInt(15);
  }

  static String createPassword({
    required String masterKey,
    required int index,
    required String sequence,
    int? finalKeyLength,
  }) {
    print("masterkey: $masterKey");
    print("index: $index");
    print("sequence: $sequence");
    print("finalKeyLength: $finalKeyLength");

    try {
      finalKeyLength ??= 32;

      String finalKey = '';

      masterKey = base64.encode(utf8.encode(masterKey));

      int totalLength = masterKey.length;
      int chunkSize = finalKeyLength ~/ 4;

      int tempChunkStartIndex = index;
      int tempChunkEndIndex = 0;

      List<String> tempKey = List<String>.filled(4, '');
      for (int step = 0; step < 4; step++) {
        tempChunkEndIndex = tempChunkStartIndex + chunkSize;
        if (tempChunkEndIndex < totalLength) {
          tempKey[step] = masterKey.substring(tempChunkStartIndex, tempChunkEndIndex);
          tempChunkStartIndex = tempChunkEndIndex;
        } else {
          tempKey[step] = masterKey.substring(tempChunkStartIndex, totalLength) +
              masterKey.substring(0, tempChunkEndIndex - totalLength);
          tempChunkStartIndex = tempChunkEndIndex - totalLength;
        }
      }

      finalKey = reverseString(tempKey[int.parse(sequence[0])]) +
          tempKey[int.parse(sequence[1])] +
          reverseString(tempKey[int.parse(sequence[2])]) +
          tempKey[int.parse(sequence[3])];

      print("finalKey: $finalKey");

      return finalKey;
    } catch (e) {
      rethrow;
    }
  }

  static String reverseString(String input) {
    return String.fromCharCodes(input.runes.toList().reversed);
  }
}

// final MessageKeyModel messageKeyModel = MessageKeyModel(
//   requestUUID: requestUUID,
//   serviceRequest: serviceRequest,
//   channelId: channelId,
//   journeyId: journeyId,
//   sessionId: sessionId,
//   index: index.toString(),
//   languageId: languageId,
//   timestamp: timestamp,
// );

// return {
//   "r": "1624521819414qj7ld, a23a5494-cc56-4ae3-a2ed-cdcd59acc23a_2024012316365815", //requestUUID
//   "sr": "AgentAPI/AppStarts/LaunchDetails", //endpoint (service request id)
//   "c": "Agent", //channelId
//   "j": "1624521806YQkAr", //journeyId (to be same from login to logout)
//   "s": "fa71c4eb-170602780284924", //sessionId
//   "i": "9", //index
//   "l": "1", //languageId
//   "t": "20240123110642", //timestamp
//   "ci": null
// };

class MWEncryptDecrypt {
//   static String encryptionMode = "AES/CBC/PKCS7PADDING";
//   static String algorithm = "AES";

//   static dynamic encReq({
//     required String deviceId,
//     required String requestUUID,
//     required String serviceRequestId,
//     required String sessionId,
//     required String timeStamp,
//     required String requestBody,
//   }) {
//     debugPrint("deviceId: $deviceId");
//     debugPrint("requestUUID: $requestUUID");
//     debugPrint("serviceRequestId: $serviceRequestId");
//     debugPrint("sessionId: $sessionId");
//     debugPrint("timeStamp: $timeStamp");
//     debugPrint("requestBody: $requestBody");
//     // String sessionId = CommonLib.epochTime();
//     // String timeStamp = DateTime.now().toUtc().toString().replaceAll(RegExp(r'[^0-9]'), '');
//     int index = generateIndex();
//     String password =
//         createPassword('$sessionId${requestUUID ?? ''}${deviceId ?? ''}$timeStamp', index, '3210', finalKeyLength: 32);
//     debugPrint("password: $password");
//     String iv = createPassword('$deviceId${requestUUID ?? ''}$sessionId$timeStamp', index, '3210', finalKeyLength: 16);
//     debugPrint("iv: $iv");
//     // String requestBody = ''; // Assuming requestBody is obtained from your request
//     BodyObject bodyObject = BodyObject.fromJson(jsonDecode(requestBody));
//     bodyObject.checkSum = SHA256Compute.computeSha256Hash(jsonEncode(bodyObject.rb));
//     // final checksum = SHA256Compute.computeSha256Hash(requestBody);
//     // debugPrint("checksum: $checksum");
//     MiddlewareRequest middlewareRequest = MiddlewareRequest();
//     middlewareRequest.rb = encrypt(jsonEncode(bodyObject), password, iv);
//     debugPrint("middlewareRequest.toJson(): ${middlewareRequest.toJson()}");
//     return middlewareRequest.toJson();
//   }

  DycResponse({
    required String deviceId,
    required String requestUUID,
    required String serviceRequestId,
    required String sessionId,
    required String timeStamp,
    required String requestBody,
    required String iv,
    required String password,
  }) {
    int index = 3;
    // int index = generateIndex();

    // String password = MWEncryptDecrypt.createPassword(
    //   '$sessionId$requestUUID$deviceId',
    //   index,
    //   "3210",
    // );

    // String plainRequest = MWEncryptDecrypt.decrypt(requestBody, password, iv);
    String? plainRequest = decryptList(requestBody, password, iv);
    // String? plainRequest = decrypt3(requestBody, password, iv);
    // String? plainRequest = decrypt4(requestBody, password, iv);

    // debugPrint("plainRequest: $plainRequest");

    // BodyObject bodyObject = CommonLib.ConvertJsonToObject<BodyObject>(
    //   plainRequest,
    // );

    // return CommonLib.ConvertJsonToObject<Object>(
    //   CommonLib.ConvertObjectToJson(bodyObject.RB),
    // );
  }

  static String? decryptList(String encryptedData, String password, String iv) {
    final data = base64Decode(encryptedData);
    final Uint8List key = Uint8List.fromList(utf8.encode(password));
    final Uint8List iv0 = Uint8List.fromList(utf8.encode(iv));
    // final Uint8List iv0 = Uint8List(16);

    final CBCBlockCipher cbcCipher = CBCBlockCipher(AESEngine());

    final ParametersWithIV<KeyParameter> ivParams = ParametersWithIV<KeyParameter>(KeyParameter(key), iv0);

    final PaddedBlockCipherParameters<ParametersWithIV<KeyParameter>, Null> paddingParams =
        PaddedBlockCipherParameters<ParametersWithIV<KeyParameter>, Null>(ivParams, null);

    final PaddedBlockCipherImpl paddedCipher = PaddedBlockCipherImpl(PKCS7Padding(), cbcCipher);
    paddedCipher.init(false, paddingParams);

    try {
      final databytes = paddedCipher.process(data);
      String plainTextOutputString = utf8.decode(databytes);
      print("plainTextOutputString: $plainTextOutputString");
      return plainTextOutputString;
    } catch (e) {
      print(e);
      return null;
    }
  }

  // static String? decrypt4(String encryptedData, String password, String iv0) {
  //   // the following 3 values were output from the above Java code
  //   // var key = base64.decode(password);
  //   // var params = base64.decode(iv0);
  //   final Uint8List key = Uint8List.fromList(utf8.encode(password));
  //   final Uint8List params = Uint8List.fromList(utf8.encode(iv0));

  //   var cipherText = base64.decode(encryptedData);
  //   // var iv = params.sublist(2); // strip the 4, 16 DER header
  //   var iv = params; // strip the 4, 16 DER header
  //   var cipher = PaddedBlockCipherImpl(
  //     PKCS7Padding(),
  //     CBCBlockCipher(AESEngine()),
  //   );
  //   cipher.init(
  //     false,
  //     PaddedBlockCipherParameters(
  //       ParametersWithIV(KeyParameter(key), iv),
  //       null,
  //     ),
  //   );

  //   var plainishText = cipher.process(cipherText);
  //   // final plainText = utf8.decode(base64.decode(utf8.decode(plainishText)));
  //   final plainText = utf8.decode(plainishText);
  //   print("plainText: $plainText");
  //   return null;
  // }

  // static String? decrypt3(String encryptedData, String password, String iv0) {
  //   String encryptedText = encryptedData;

  //   List<int> keyText = utf8.encode(password); // data being hashed
  //   List<int> keyBytes = crypto.sha256.convert(keyText).bytes;

  //   final key = Key(Uint8List.fromList(keyBytes));

  //   print('key: $keyBytes');

  //   Encrypter encrypter = Encrypter(AES(key, mode: AESMode.cbc, padding: "PKCS7"));

  //   String ivText = iv0;

  //   Uint8List encrypted = Uint8List.fromList(base64.decode(encryptedText));

  //   final ivBytes = crypto.md5.convert(utf8.encode(ivText)).bytes;
  //   IV iv = IV(Uint8List.fromList(ivBytes));

  //   print('iv: $ivBytes');

  //   String decrypted = encrypter.decrypt(Encrypted(encrypted), iv: iv);
  //   print(decrypted);
  //   return null;
  // }

  static String decrypt(dynamic encryptedData, String password, [String? iv]) {
    try {
      final Uint8List keyBytes = Uint8List.fromList(utf8.encode(password));

      CipherParameters keyParams;
      if (iv != null) {
        final Uint8List ivBytes = Uint8List.fromList(utf8.encode(iv));
        keyParams = ParametersWithIV(KeyParameter(keyBytes), ivBytes);
      } else {
        keyParams = KeyParameter(keyBytes);
      }

      BlockCipher cipher = PaddedBlockCipherImpl(
        PKCS7Padding(),
        CBCBlockCipher(AESEngine()),
      );

      // PaddedBlockCipherImpl paddedCipher = PaddedBlockCipherImpl(PKCS7Padding(), cipher);
      cipher.init(false, keyParams);

      Uint8List decryptedBytes = cipher.process(Uint8List.fromList(base64.decode(encryptedData.toString())));

      String plainTextOutputString = utf8.decode(decryptedBytes);

      return plainTextOutputString;
    } catch (e) {
      rethrow;
    }
  }

//   static String encrypt(String data, String password, String iv) {
//     try {
//       final Uint8List inputBytes = Uint8List.fromList(utf8.encode(data));
//       final Uint8List keyBytes = Uint8List.fromList(utf8.encode(password));

//       final CipherParameters keyParams = KeyParameter(keyBytes);

//       BlockCipher cipher = PaddedBlockCipherImpl(
//         PKCS7Padding(),
//         CBCBlockCipher(AESEngine()),
//       );

//       ParametersWithIV params;
//       if (iv != null) {
//         final Uint8List ivBytes = Uint8List.fromList(utf8.encode(iv));
//         params = ParametersWithIV(keyParams, ivBytes);
//       } else {
//         params = ParametersWithIV(keyParams, Uint8List(16));
//       }

//       cipher.init(true, params);

//       Uint8List encryptedBytes = cipher.process(inputBytes);
//       String base64EncryptedOutputString = base64Encode(encryptedBytes);

//       return base64EncryptedOutputString;
//     } catch (e) {
//       rethrow;
//     }
//   }

  static String createPassword(String masterKey, int index, String sequence, {int finalKeyLength = 32}) {
    // debugPrint("masterkey: $masterKey");
    // debugPrint("index: $index");
    // debugPrint("sequence: $sequence");
    // debugPrint("finalKeyLength: $finalKeyLength");

    try {
      finalKeyLength ??= 32;
      String finalKey = '';

      masterKey = base64Encode(utf8.encode(masterKey));

      int totalLength = masterKey.length;
      int chunkSize = finalKeyLength ~/ 4;

      int tempChunkStartIndex = index;
      int tempChunkEndIndex = 0;

      List<String> tempKey = List<String>.filled(4, '');
      for (int step = 0; step < 4; step++) {
        tempChunkEndIndex = tempChunkStartIndex + chunkSize;
        if (tempChunkEndIndex < totalLength) {
          tempKey[step] = masterKey.substring(tempChunkStartIndex, tempChunkEndIndex);
          tempChunkStartIndex = tempChunkEndIndex;
        } else {
          tempKey[step] = masterKey.substring(tempChunkStartIndex, totalLength) +
              masterKey.substring(0, tempChunkEndIndex - totalLength);
          tempChunkStartIndex = tempChunkEndIndex - totalLength;
        }
      }

      finalKey = CommonLib.reverseString(tempKey[int.parse(sequence[0])], 0) +
          tempKey[int.parse(sequence[1])] +
          CommonLib.reverseString(tempKey[int.parse(sequence[2])], 0) +
          tempKey[int.parse(sequence[3])];

      return finalKey;
    } catch (e) {
      throw Exception('Create password error: $e');
    }
  }

  static int generateIndex() {
    try {
      return Random().nextInt(16);
    } catch (e) {
      throw Exception('Generate index error: $e');
    }
  }
}

class CommonLib {
  static String epochTime() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  static String reverseString(String str, int start) {
    List<String> characters = str.split('');
    characters = List.from(characters.reversed);
    return characters.join();
  }
}

class SHA256Compute {
  static String computeSha256Hash(String input) {
    crypto.Digest digest = crypto.sha256.convert(utf8.encode(input));
    return digest.toString();
  }
}

// class BodyObject {
//   Object? rb;
//   String? checkSum;

//   BodyObject({this.rb, this.checkSum});

//   factory BodyObject.fromJson(Map<String, dynamic> json) {
//     return BodyObject(rb: json['RB'], checkSum: json['CheckSum']);
//   }

//   Map<String, dynamic> toJson() {
//     return {'RB': rb, 'CheckSum': checkSum};
//   }
// }

// class MiddlewareRequest {
//   String rb;

//   MiddlewareRequest({this.rb = ''});

//   Map<String, dynamic> toJson() {
//     return {'RB': rb};
//   }
// }
