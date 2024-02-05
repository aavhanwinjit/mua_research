import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/encryption_helper.dart';

class EncryptionInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    print("Encryption interceptor is working - onRequest");
    final deviceInfo =
        await DeviceInformationHelper().generateDeviceInformation();
    String path = options.path;
    print(path);
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
    log("RESPONSE:");
    log(response.statusCode.toString());
    log(response.data.toString());

    response.data = EncryptionHelper.decrypt(
      cipherText: response.data.body,
      deviceID: response.data.header.deviceInfo.deviceId,
      requestUUID: response.data.header.messageKey.requestUUID,
      sessionId: response.data.header.messageKey.sessionId,
      timestamp: response.data.header.messageKey.timestamp,
      index: int.parse(response.data.header.messageKey.index),
    );
    print(response.data);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print(err.error);
  }
}
