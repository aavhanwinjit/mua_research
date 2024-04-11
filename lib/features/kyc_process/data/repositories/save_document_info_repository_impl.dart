import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/request/save_additional_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/response/save_additional_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/request/save_address_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/response/save_address_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/request/save_policy_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/response/save_policy_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/request/save_por_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/response/save_por_documents_response_model.dart';
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
  Future<Either<Failure, SaveAddressDetailsResponseModel>> saveAddressDetails(
      SaveAddressDetailsRequestModel request) async {
    try {
      final response = await apiService.saveAddressDetails(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, SavePorDocumentsResponseModel>> savePORDocuments(SavePorDocumentsRequestModel request) async {
    try {
      final response = await apiService.savePORDocuments(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, SaveAdditionalDocumentsResponseModel>> saveAdditionalDocuments(
      SaveAdditionalDocumentsRequestModel request) async {
    try {
      final response = await apiService.saveAdditionalDocuments(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, SavePolicyDocumentsResponseModel>> savePolicyDocuments(
      SavePolicyDocumentsRequestModel request) async {
    try {
      final response = await apiService.savePolicyDocuments(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
