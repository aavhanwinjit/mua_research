import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/request/get_kyc_types_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';

abstract class KycTypesRepository {
  Future<Either<Failure, GetKycTypesResponseModel>> getKycTypes(GetKycTypesRequestModel request);
}
