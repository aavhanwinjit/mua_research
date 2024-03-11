import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/signature/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/signature/data/models/save_signature/request/save_signature_request_model.dart';
import 'package:ekyc/features/signature/domain/repositories/save_signature_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SaveSignatureRepository)
class SaveSignatureRepositoryImpl implements SaveSignatureRepository {
  final ApiService apiService;

  SaveSignatureRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, SaveFileResponseModel>> saveSignature(SaveSignatureRequestModel request) async {
    try {
      final response = await apiService.saveSignature(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
