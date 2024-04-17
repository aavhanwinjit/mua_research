import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/save_non_motor_insurance_documents/request/save_non_motor_insurance_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_non_motor_insurance_documents/response/save_non_motor_insurance_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveNonMotorInsuranceDocuments
    implements
        UseCase<SaveNonMotorInsuranceDocumentsResponseModel,
            SaveNonMotorInsuranceDocumentsRequestModel> {
  final SaveDocumentInfoRepository saveDocumentInfoRepository;
  SaveNonMotorInsuranceDocuments(this.saveDocumentInfoRepository);

  @override
  Future<Either<Failure, SaveNonMotorInsuranceDocumentsResponseModel>> call(
      SaveNonMotorInsuranceDocumentsRequestModel params) async {
    return await saveDocumentInfoRepository
        .saveNonMotorInsuranceDocuments(params);
  }
}
