import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/request/save_por_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/response/save_por_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SavePORDocuments implements UseCase<SavePorDocumentsResponseModel, SavePorDocumentsRequestModel> {
  final SaveDocumentInfoRepository saveDocumentInfoRepository;
  SavePORDocuments(this.saveDocumentInfoRepository);

  @override
  Future<Either<Failure, SavePorDocumentsResponseModel>> call(SavePorDocumentsRequestModel params) async {
    return await saveDocumentInfoRepository.savePORDocuments(params);
  }
}
