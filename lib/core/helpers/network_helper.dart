import 'package:dio/dio.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/network/interceptors/connection_checker_interceptor.dart';
import 'package:ekyc/core/network/interceptors/header_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkHelper {
  static const ACCEPT_HEADER = "Accept";

  static Dio getDioClient({List<Interceptor>? interceptors}) {
    Dio dio = Dio();

    dio.options.headers[ACCEPT_HEADER] = "application/json";

    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }

    dio.interceptors.add(
      ConnectionCheckerInterceptor(),
    );

    dio.interceptors.add(
      HeaderInterceptor(),
    );

    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
        ),
      );
    }

    return dio;
  }

  static void reInitDio({List<Interceptor>? interceptors}) {
    if (getIt.isRegistered<Dio>()) {
      getIt.unregister<Dio>();
    }

    getIt.registerLazySingleton<Dio>(() {
      Dio dio = getDioClient(interceptors: interceptors);
      // ServiceHelper.reInitLazyServices();
      return dio;
    });
  }
}
