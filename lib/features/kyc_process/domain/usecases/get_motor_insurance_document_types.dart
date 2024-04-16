import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/master_data_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetMotorInsuranceDocumentTypes
    implements UseCase<GetMotorInsuranceDocumentTypesResponseModel, Null> {
  final MasterDataRepository masterDataRepository;
  GetMotorInsuranceDocumentTypes(this.masterDataRepository);

  @override
  Future<Either<Failure, GetMotorInsuranceDocumentTypesResponseModel>> call(
      Null params) async {
    return await masterDataRepository.getMotorInsuranceDocumentTypes();
  }
}
