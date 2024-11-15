import 'package:ekyc/features/kyc_process/data/models/get_policy_document_types/response/get_policy_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';

class PolicyDocumentElement {
  PolicyDocumentTypeModel? documentElement;
  ScanDocumentResponseBody? scanResponse;
  // ScanDocumentResponseBody? scanResponse2;
  String? filePath;
  // String? pdfPath;

  PolicyDocumentElement({
    required this.documentElement,
    required this.scanResponse,
    // required this.scanResponse2,
    required this.filePath,
    // required this.pdfPath,
  });
}
