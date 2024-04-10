import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';

class AdditionalDocumentElement {
  ScanDocumentResponseBody? scanResponse;
  String? filePath;

  AdditionalDocumentElement({
    required this.scanResponse,
    required this.filePath,
  });
}
