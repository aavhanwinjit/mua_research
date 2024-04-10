import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_insured_documents/request/save_insured_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveInsuredDocuments implements UseCase<SaveIdentityDetailsResponseModel, SaveInsuredDocumentsRequestModel> {
  final SaveDocumentInfoRepository saveDocumentInfoRepository;
  SaveInsuredDocuments(this.saveDocumentInfoRepository);

  @override
  Future<Either<Failure, SaveIdentityDetailsResponseModel>> call(SaveInsuredDocumentsRequestModel params) async {
    return await saveDocumentInfoRepository.saveInsuredDocuments(params);
  }
}
