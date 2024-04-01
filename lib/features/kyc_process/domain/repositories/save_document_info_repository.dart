import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/response/add_customer_information_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';

abstract class SaveDocumentInfoRepository {
  Future<Either<Failure, AddCustomerInformationResponseModel>> saveIdentityDetails(
      SaveIdentityDetailsRequestModel request);
}
