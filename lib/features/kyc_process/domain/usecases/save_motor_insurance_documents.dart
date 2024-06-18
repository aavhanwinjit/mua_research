import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/request/save_motor_insurance_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/response/save_motor_insurance_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveMotorInsuranceDocuments
    implements
        UseCase<SaveMotorInsuranceDocumentsResponseModel,
            SaveMotorInsuranceDocumentsRequestModel> {
  final SaveDocumentInfoRepository saveDocumentInfoRepository;
  SaveMotorInsuranceDocuments(this.saveDocumentInfoRepository);

  @override
  Future<Either<Failure, SaveMotorInsuranceDocumentsResponseModel>> call(
      SaveMotorInsuranceDocumentsRequestModel params) async {
    return await saveDocumentInfoRepository.saveMotorInsuranceDocuments(params);
  }
}