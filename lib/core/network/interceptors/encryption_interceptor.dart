import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/encryption_helper.dart';
import 'package:ekyc/models/generic_response/response_model.dart';

class EncryptionInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final deviceInfo =
        await DeviceInformationHelper().generateDeviceInformation();
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
    response.data["b"] = decryptedResponse;

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print(err.error);
  }
}
