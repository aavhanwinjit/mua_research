import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';

class PORDocumentElement {
  PORDocumentTypeModel? documentElement;
  // int index;
  ScanDocumentResponseBody? scanResponse;
  String? filePath;
  String? extractedLastName;
  String? issueDate;

  PORDocumentElement({
    required this.documentElement,
    // required this.index,
    required this.scanResponse,
    required this.filePath,
    this.extractedLastName,
    this.issueDate,
  });
}
