import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/encryption_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    debugPrint('\n******************* RESPONSE ***********************');
    debugPrint('${response.data}');
    debugPrint('******************* ******** ***********************\n');

    if (response.data["s"]["statusCode"] == "ACCERR") {
      // Session expired so logout
      await LocalDataHelper.removeAuthToken();
      await LocalDataHelper.removeSessionId();
      final providerContainer = ProviderContainer();
      providerContainer.read(userLoggedInProvider.notifier).update((state) => false);
      rootNavigatorKey.currentContext?.goNamed(AppRoutes.mpinLoginScreen);
    } else if (response.data["b"] != null) {
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

      debugPrint("${decryptedResponse['rb']}");
      debugPrint("${decryptedResponse['rb'].runtimeType}");

      if (decryptedResponse['rb'] is String && decryptedResponse['rb'].length == 0) {
        decryptedResponse['rb'] = null;
      } else {
        decryptedResponse['rb'] = json.decode(decryptedResponse['rb']);
      }

      response.data["b"] = decryptedResponse;
      handler.next(response);
    } else if (response.data["b"] == null) {
      handler.next(response);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(err.error.toString());
  }
}
