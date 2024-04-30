import 'package:dio/dio.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:flutter/material.dart';

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final headers = options.headers;

    if (headers["Authorization"] != null && headers["Authorization"] == true) {
      final token = await LocalDataHelper.getAuthToken();

      headers["Authorization"] = token;
      // debugPrint("Auth: $token");
    }

    handler.next(options);
  }
}
