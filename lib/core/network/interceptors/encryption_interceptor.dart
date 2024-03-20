import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/encryption_helper.dart';
import 'package:flutter/material.dart';

class EncryptionInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final deviceInfo = await getIt<DeviceInformationHelper>().generateDeviceInformation();

    String path = options.path;

    debugPrint('\n******************* PLAIN REQUEST ***********************');
    debugPrint(jsonEncode(options.data?.toJson()));
    debugPrint('******************* ************* ***********************\n');

    options.data = await EncryptionHelper.encrypt(
      plainData: options.data?.toJson(),
      deviceInfoModel: deviceInfo,
      serviceRequestURL: path,
    );

    final String baseUrl = options.baseUrl;
    options.path = baseUrl;

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('\n******************* RESPONSE ***********************');
    debugPrint('${response.data}');
    debugPrint('******************* ******** ***********************\n');

    if (response.data["b"] != null) {
      Map<String, dynamic> decryptedResponse = EncryptionHelper.decrypt(
        cipherText: response.data["b"],
        deviceID: response.data["h"]["di"]["d"],
        requestUUID: response.data["h"]["mk"]["r"],
        sessionId: response.data["h"]["mk"]["s"],
        timestamp: response.data["h"]["mk"]["t"],
        index: int.parse(response.data["h"]["mk"]["i"]),
      );

      debugPrint('\n******************* DECRYPTED RESPONSE ***********************');
      debugPrint("$decryptedResponse");
      debugPrint('******************* ****************** ***********************\n');

      decryptedResponse['rb'] = json.decode(decryptedResponse['rb']);

      response.data["b"] = decryptedResponse;

      handler.next(response);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(err.error.toString());
  }
}
