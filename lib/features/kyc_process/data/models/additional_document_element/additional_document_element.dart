import 'package:ekyc/features/kyc_process/data/models/get_additional_document_types/response/get_additional_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';

class AdditionalDocumentElement {
  AdditionalDocumentTypeModel? documentElement;
  ScanDocumentResponseBody? scanResponse;
  String? filePath;

  AdditionalDocumentElement({
    required this.documentElement,
    required this.scanResponse,
    required this.filePath,
  });
}
