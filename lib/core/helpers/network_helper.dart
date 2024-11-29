import 'package:dio/dio.dart';
import 'package:ekyc/core/helpers/cert_reader.dart';
import 'package:ekyc/core/network/interceptors/authorization_interceptor.dart';
import 'package:ekyc/core/network/interceptors/encryption_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkHelper {
  static const ACCEPT_HEADER = "Accept";
  static const CONTENT_TYPE_HEADER = "Content-Type";

  static Dio getDioClient({List<Interceptor>? interceptors}) {
    Dio dio = Dio();

    CertReader.addSslPinning(dio);

    dio.options.headers[ACCEPT_HEADER] = "application/json";
    dio.options.headers[CONTENT_TYPE_HEADER] = "application/json";

    List<Interceptor> interceptorsList = [
      //   ConnectionCheckerInterceptor(),
      //   HeaderInterceptor(),
      AuthorizationInterceptor(),
      EncryptionInterceptor(),
    ];

    if (kDebugMode) {
      interceptorsList.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
        ),
      );
    }

    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }

    dio.interceptors.addAll(interceptorsList);

    return dio;
  }

  // static void reInitDio({List<Interceptor>? interceptors}) {
  //   if (getIt.isRegistered<Dio>()) {
  //     getIt.unregister<Dio>();
  //   }

  //   getIt.registerLazySingleton<Dio>(() {
  //     Dio dio = getDioClient(interceptors: interceptors);
  //     // ServiceHelper.reInitLazyServices();
  //     return dio;
  //   });
  // }
}
