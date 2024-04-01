import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/response/add_customer_information_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SaveDocumentInfoRepository)
class SaveDocumentInfoRepositoryImpl implements SaveDocumentInfoRepository {
  final ApiService apiService;

  SaveDocumentInfoRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, AddCustomerInformationResponseModel>> saveIdentityDetails(
      SaveIdentityDetailsRequestModel request) async {
    try {
      final response = await apiService.saveIdentityDetails(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
