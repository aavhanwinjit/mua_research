import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';

class NonMotorInsuranceDocumentElement {
  NonMotorInsuranceDocumentTypeModel? documentElement;
  // int index;
  ScanDocumentResponseBody? scanResponse;
  // ScanDocumentResponseBody? scanResponse2;
  String? nonMotorDocImagePath;
  // String? nonMotorDocPdfPath;

  NonMotorInsuranceDocumentElement({
    required this.documentElement,
    // required this.index,
    required this.scanResponse,
    // required this.scanResponse2,
    required this.nonMotorDocImagePath,
    // required this.nonMotorDocPdfPath,
  });
}
