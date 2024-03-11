import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/signature/data/models/view_file/request/view_file_request_model.dart';
import 'package:ekyc/features/signature/data/models/view_file/response/view_file_response_model.dart';
import 'package:ekyc/features/signature/domain/repositories/view_file_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ViewFileRepository)
class ViewFileRepositoryImpl implements ViewFileRepository {
  final ApiService apiService;

  ViewFileRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, ViewFileResponseModel>> viewFile(ViewFileRequestModel request) async {
    try {
      final response = await apiService.viewFile(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
