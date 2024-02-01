import 'package:dio/dio.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/network/network_info.dart';

class ConnectionCheckerInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!await getIt<NetworkInfo>().isConnected) {
      handler.reject(
        DioException(
          requestOptions: options,
          error: "Oops! Looks like you're not connected to the internet. Check your internet connection and try again.",
        ),
      );
    } else {
      handler.next(options);
    }
  }
}
