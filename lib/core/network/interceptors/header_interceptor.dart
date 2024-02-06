import 'package:dio/dio.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/request_generator.dart';
import 'package:ekyc/models/generic_response/response_model.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // final String path = options.path;
    // print(path);
    // final String baseUrl = options.baseUrl;

    // options.path = baseUrl;

    // final request = await getIt<RequestGenerator>()
    //     .generateRequestModel(apiEndpoint: path, body: options.data);

    // options.data = request;

    handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    // final ResponseModel responseModel = ResponseModel.fromJson(response.data);
    // response.data = responseModel;

    handler.next(response);
  }
}
