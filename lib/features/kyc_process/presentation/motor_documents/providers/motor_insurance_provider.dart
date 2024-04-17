import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final motorInsuranceProofFilePathProvider =
//     StateProvider<String?>((ref) => null);
final insuredDocProofFilePathProvider = StateProvider<String?>((ref) => null);

final motorInsuranceDocsTypesListLoading = StateProvider<bool>((ref) => false);

// final selectedMotorInsuranceDocTypeProvider =
//     StateProvider<MotorInsuranceDocumentTypeModel?>((ref) => null);

final motorInsuranceDocOCRLoadingProvider = StateProvider<bool>((ref) => false);

final motorInsuranceDocOCRApiResponse =
    StateProvider<ScanDocumentResponseBody?>((ref) => null);

final motorInsuranceOtherNameProvider = StateProvider<String?>((ref) => null);
final motorInsuranceSurnameProvider = StateProvider<String?>((ref) => null);

final ocrNameMatched = StateProvider<bool>((ref) => true);
