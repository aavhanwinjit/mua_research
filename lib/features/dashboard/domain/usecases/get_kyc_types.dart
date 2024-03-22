import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/request/get_kyc_types_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:ekyc/features/dashboard/domain/repositories/kyc_types_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetKycTypes implements UseCase<GetKycTypesResponseModel, GetKycTypesRequestModel> {
  final KycTypesRepository kycTypesRepository;
  GetKycTypes(this.kycTypesRepository);

  @override
  Future<Either<Failure, GetKycTypesResponseModel>> call(GetKycTypesRequestModel params) async {
    return await kycTypesRepository.getKycTypes(params);
  }
}
