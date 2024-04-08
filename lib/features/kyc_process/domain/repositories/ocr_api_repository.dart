import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/request/scan_document_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';

abstract class OCRApiRepository {
  Future<Either<Failure, ScanDocumentResponseModel>> scanDocument(ScanDocumentRequestModel request);
}
