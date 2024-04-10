import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/request/save_address_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_insured_documents/request/save_insured_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SaveDocumentInfoRepository)
class SaveDocumentInfoRepositoryImpl implements SaveDocumentInfoRepository {
  final ApiService apiService;

  SaveDocumentInfoRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, SaveIdentityDetailsResponseModel>> saveIdentityDetails(
      SaveIdentityDetailsRequestModel request) async {
    try {
      final response = await apiService.saveIdentityDetails(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, SaveIdentityDetailsResponseModel>> saveAddressDetails(
      SaveAddressDetailsRequestModel request) async {
    try {
      final response = await apiService.saveAddressDetails(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, SaveIdentityDetailsResponseModel>> saveInsuredDocuments(
      SaveInsuredDocumentsRequestModel request) async {
    try {
      final response = await apiService.saveInsuredDocuments(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
