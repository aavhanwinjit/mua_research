import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/request/save_address_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/request/save_motor_insurance_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/response/save_motor_insurance_documents_response_model.dart';

abstract class SaveDocumentInfoRepository {
  Future<Either<Failure, SaveIdentityDetailsResponseModel>> saveIdentityDetails(
      SaveIdentityDetailsRequestModel request);

  Future<Either<Failure, SaveIdentityDetailsResponseModel>> saveAddressDetails(
      SaveAddressDetailsRequestModel request);

  Future<Either<Failure, SaveMotorInsuranceDocumentsResponseModel>>
      saveMotorInsuranceDocuments(
          SaveMotorInsuranceDocumentsRequestModel request);
}
