import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/request/get_kyc_types_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:ekyc/features/dashboard/domain/repositories/kyc_types_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: KycTypesRepository)
class KycTypesRepositoryImpl implements KycTypesRepository {
  final ApiService apiService;

  KycTypesRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, GetKycTypesResponseModel>> getKycTypes(GetKycTypesRequestModel request) async {
    try {
      final response = await apiService.getKycTypes(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
