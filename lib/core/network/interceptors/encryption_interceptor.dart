import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/encryption_helper.dart';
import 'package:flutter/material.dart';

class EncryptionInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final deviceInfo = await DeviceInformationHelper().generateDeviceInformation();
    String path = options.path;
    options.data = EncryptionHelper.encrypt(
      plainData: options.data.toJson(),
      deviceInfoModel: deviceInfo,
      serviceRequestURL: path,
    );

    final String baseUrl = options.baseUrl;
    options.path = baseUrl;

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Map<String, dynamic> decryptedResponse = EncryptionHelper.decrypt(
      cipherText: response.data["b"],
      deviceID: response.data["h"]["di"]["d"],
      requestUUID: response.data["h"]["mk"]["r"],
      sessionId: response.data["h"]["mk"]["s"],
      timestamp: response.data["h"]["mk"]["t"],
      index: int.parse(response.data["h"]["mk"]["i"]),
    );

    debugPrint("decrypted Response: $decryptedResponse");
    debugPrint("decrypted Response type: ${decryptedResponse.runtimeType}");
    debugPrint("decrypted Response rb: ${decryptedResponse['rb']}");

    decryptedResponse['rb'] = json.decode(decryptedResponse['rb']);

    response.data["b"] = decryptedResponse;

    // debugPrint("response.data in interceptor: ${response.data}");
    // debugPrint("response.data type in interceptor: ${response.data.runtimeType}");

    // debugPrint("response.data['rb'] in interceptor: ${response.data['b']['rb'].runtimeType}");

    // final LaunchDetailsResponse responseModel = LaunchDetailsResponse.fromJson(response.data);

    // debugPrint("responseModel: $responseModel");

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print(err.error);
  }
}
