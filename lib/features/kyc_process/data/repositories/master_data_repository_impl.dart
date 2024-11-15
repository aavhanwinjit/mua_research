import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/kyc_process/data/models/get_additional_document_types/response/get_additional_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/request/get_document_category_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_policy_document_types/response/get_policy_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/master_data_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MasterDataRepository)
class MasterDataRepositoryImpl implements MasterDataRepository {
  final ApiService apiService;

  MasterDataRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, GetIdentityDocumentTypesResponseModel>> getIdentityDocumentTypes() async {
    try {
      final response = await apiService.getIdentityDocumentTypes();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, GetDocumentCategoryResponseModel>> getDocumentCategory(
      GetDocumentCategoryRequestModel request) async {
    try {
      final response = await apiService.getDocumentCategory(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, GetAddressDocumentTypesResponseModel>> getAddressDocumentTypes() async {
    try {
      final response = await apiService.getAddressDocumentTypes();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, GetPorDocumentTypesResponseModel>> getPORDocumentType() async {
    try {
      final response = await apiService.getPORDocumentTypes();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, GetPolicyDocumentTypesResponseModel>> getPolicyDocumentTypes() async {
    try {
      final response = await apiService.getPolicyDocumentTypes();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, GetAdditionalDocumentTypesResponseModel>> getAdditionalDocTypes() async {
    try {
      final response = await apiService.getAdditionalDocTypes();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, GetMotorInsuranceDocumentTypesResponseModel>> getMotorInsuranceDocumentTypes() async {
    try {
      final response = await apiService.getMotorInsuranceDocumentTypes();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, GetNonMotorInsuranceDocumentTypesResponseModel>> getNonMotorInsuranceDocumentTypes() async {
    try {
      final response = await apiService.getNonMotorInsuranceDocumentTypes();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
