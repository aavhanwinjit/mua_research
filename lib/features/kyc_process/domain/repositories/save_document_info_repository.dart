import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/request/save_additional_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/response/save_additional_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/request/save_address_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/response/save_address_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/request/save_motor_insurance_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/response/save_motor_insurance_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_non_motor_insurance_documents/request/save_non_motor_insurance_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_non_motor_insurance_documents/response/save_non_motor_insurance_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/request/save_policy_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/response/save_policy_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/request/save_por_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/response/save_por_documents_response_model.dart';

abstract class SaveDocumentInfoRepository {
  Future<Either<Failure, SaveIdentityDetailsResponseModel>> saveIdentityDetails(
      SaveIdentityDetailsRequestModel request);

  Future<Either<Failure, SaveAddressDetailsResponseModel>> saveAddressDetails(SaveAddressDetailsRequestModel request);

  Future<Either<Failure, SaveMotorInsuranceDocumentsResponseModel>> saveMotorInsuranceDocuments(
      SaveMotorInsuranceDocumentsRequestModel request);

  Future<Either<Failure, SaveNonMotorInsuranceDocumentsResponseModel>> saveNonMotorInsuranceDocuments(
      SaveNonMotorInsuranceDocumentsRequestModel request);

  Future<Either<Failure, SavePorDocumentsResponseModel>> savePORDocuments(SavePorDocumentsRequestModel request);

  Future<Either<Failure, SavePolicyDocumentsResponseModel>> savePolicyDocuments(
      SavePolicyDocumentsRequestModel request);

  Future<Either<Failure, SaveAdditionalDocumentsResponseModel>> saveAdditionalDocuments(
      SaveAdditionalDocumentsRequestModel request);
}
