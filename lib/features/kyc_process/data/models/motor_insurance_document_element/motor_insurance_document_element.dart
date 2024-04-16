import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';

class MotorInsuranceDocumentElement {
  MotorInsuranceDocumentTypeModel? documentElement;
  // int index;
  ScanDocumentResponseBody? scanResponse;
  String? motorDocImagePath;

  MotorInsuranceDocumentElement(
      {required this.documentElement,
      // required this.index,
      required this.scanResponse,
      required this.motorDocImagePath});
}
