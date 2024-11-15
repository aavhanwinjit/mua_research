import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/signature/data/models/save_file/request/save_file_request_model.dart';
import 'package:ekyc/features/signature/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/signature/domain/repositories/save_file_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SaveFileRepository)
class SaveFileRepositoryImpl implements SaveFileRepository {
  final ApiService apiService;

  SaveFileRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, SaveFileResponseModel>> saveFile(SaveFileRequestModel request) async {
    try {
      final response = await apiService.saveFile(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
