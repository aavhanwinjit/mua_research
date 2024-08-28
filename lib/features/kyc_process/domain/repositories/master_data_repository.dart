import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/kyc_process/data/models/get_additional_document_types/response/get_additional_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/request/get_document_category_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_policy_document_types/response/get_policy_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';

abstract class MasterDataRepository {
  Future<Either<Failure, GetIdentityDocumentTypesResponseModel>> getIdentityDocumentTypes();

  Future<Either<Failure, GetDocumentCategoryResponseModel>> getDocumentCategory(
      GetDocumentCategoryRequestModel request);

  Future<Either<Failure, GetAddressDocumentTypesResponseModel>> getAddressDocumentTypes();

  Future<Either<Failure, GetPorDocumentTypesResponseModel>> getPORDocumentType();

  Future<Either<Failure, GetMotorInsuranceDocumentTypesResponseModel>> getMotorInsuranceDocumentTypes();

  Future<Either<Failure, GetNonMotorInsuranceDocumentTypesResponseModel>> getNonMotorInsuranceDocumentTypes();

  Future<Either<Failure, GetPolicyDocumentTypesResponseModel>> getPolicyDocumentTypes();

  Future<Either<Failure, GetAdditionalDocumentTypesResponseModel>> getAdditionalDocTypes();
}
