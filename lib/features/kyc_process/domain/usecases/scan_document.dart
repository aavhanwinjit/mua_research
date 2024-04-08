import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/request/scan_document_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/ocr_api_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ScanDocument implements UseCase<ScanDocumentResponseModel, ScanDocumentRequestModel> {
  final OCRApiRepository ocrApiRepository;
  ScanDocument(this.ocrApiRepository);

  @override
  Future<Either<Failure, ScanDocumentResponseModel>> call(ScanDocumentRequestModel params) async {
    return await ocrApiRepository.scanDocument(params);
  }
}
