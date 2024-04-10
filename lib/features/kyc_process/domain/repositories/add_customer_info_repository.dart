import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/request/add_customer_information_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/response/add_customer_information_response_model.dart';

abstract class AddCustomerInfoRepository {
  Future<Either<Failure, AddCustomerInformationResponseModel>> addCustomerInformation(
      AddCustomerInformationRequestModel request);
}
