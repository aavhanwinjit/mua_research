import 'dart:convert';

import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/encryption_helper.dart';
import 'package:ekyc/models/app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpApiServiceHelper {
  static Future<Map<String, dynamic>> postMethod(
    String endpoint,
    Map<String, dynamic>? payLoad, [
    Map<String, String>? headers,
  ]) async {
    final baseURL = getIt<AppConfig>().baseUrl;
    final deviceInfo = await getIt<DeviceInformationHelper>().generateDeviceInformation();

    debugPrint('******************* REQUEST ***********************');
    debugPrint('POST ${baseURL! + endpoint}  + plain request = ${jsonEncode(payLoad)}');
    debugPrint('******************* ********** ***********************');

    if (headers != null) {
      headers['Content-Type'] = 'application/json';
    } else {
      headers = {'Content-Type': 'application/json'};
    }

    debugPrint('******************* HEADER ***********************');
    debugPrint('Headers: $headers');
    debugPrint('******************* ****** ***********************');

    final Map<String, dynamic> encryptedRequest = await EncryptionHelper.encrypt(
      plainData: payLoad,
      deviceInfoModel: deviceInfo,
      serviceRequestURL: endpoint,
    );

    var response = await http.post(
      Uri.parse(baseURL),
      body: json.encode(encryptedRequest),
      headers: headers,
    );

    return _handledResponse(response, endpoint);
  }

  static Future<Map<String, dynamic>> _handledResponse(http.Response response, String endpoint) async {
    debugPrint('******************* RESPONSE ***********************');
    debugPrint('status code: ${response.statusCode}');
    debugPrint("Response Headers: ${response.headers}");
    debugPrint('response[$endpoint]: ${response.body}');
    debugPrint('******************* ******** ***********************');

    // if (response.body!['auth'] == false) {
    //   LogoutDialog().logout();
    //   return null;
    // }

    if (response.statusCode >= 200 && response.statusCode < 400) {
      final Map<String, dynamic> responseJson = jsonDecode(response.body);

      if (responseJson['b'] != null) {
        Map<String, dynamic> decryptedResponse = EncryptionHelper.decrypt(
          cipherText: responseJson["b"],
          deviceID: responseJson["h"]["di"]["d"],
          requestUUID: responseJson["h"]["mk"]["r"],
          sessionId: responseJson["h"]["mk"]["s"],
          timestamp: responseJson["h"]["mk"]["t"],
          index: int.parse(responseJson["h"]["mk"]["i"]),
        );

        debugPrint('******************* DECRYPTED RESPONSE ***********************');
        debugPrint("$decryptedResponse");
        debugPrint('******************* ****************** ***********************');

        decryptedResponse['rb'] = json.decode(decryptedResponse['rb']);

        responseJson['b'] = decryptedResponse;

        return responseJson;
      }

      return responseJson;
    } else if (response.statusCode == 400) {
      throw Exception(response.toString());
    } else if (response.statusCode == 403) {
      throw Exception(response.toString());
    } else {
      throw Exception(response.toString());
    }
  }
}
