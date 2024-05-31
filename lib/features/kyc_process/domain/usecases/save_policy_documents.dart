import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/request/save_policy_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/response/save_policy_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SavePolicyDocuments implements UseCase<SavePolicyDocumentsResponseModel, SavePolicyDocumentsRequestModel> {
  final SaveDocumentInfoRepository saveDocumentInfoRepository;
  SavePolicyDocuments(this.saveDocumentInfoRepository);

  @override
  Future<Either<Failure, SavePolicyDocumentsResponseModel>> call(SavePolicyDocumentsRequestModel params) async {
    return await saveDocumentInfoRepository.savePolicyDocuments(params);
  }
}
