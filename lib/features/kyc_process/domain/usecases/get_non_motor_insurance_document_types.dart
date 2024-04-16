import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/master_data_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetNonMotorInsuranceDocumentTypes
    implements UseCase<GetNonMotorInsuranceDocumentTypesResponseModel, Null> {
  final MasterDataRepository masterDataRepository;
  GetNonMotorInsuranceDocumentTypes(this.masterDataRepository);

  @override
  Future<Either<Failure, GetNonMotorInsuranceDocumentTypesResponseModel>> call(
      Null params) async {
    return await masterDataRepository.getNonMotorInsuranceDocumentTypes();
  }
}
