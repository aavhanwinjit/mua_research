import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/request/save_additional_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/response/save_additional_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveAdditionalDocuments
    implements UseCase<SaveAdditionalDocumentsResponseModel, SaveAdditionalDocumentsRequestModel> {
  final SaveDocumentInfoRepository saveDocumentInfoRepository;
  SaveAdditionalDocuments(this.saveDocumentInfoRepository);

  @override
  Future<Either<Failure, SaveAdditionalDocumentsResponseModel>> call(SaveAdditionalDocumentsRequestModel params) async {
    return await saveDocumentInfoRepository.saveAdditionalDocuments(params);
  }
}
