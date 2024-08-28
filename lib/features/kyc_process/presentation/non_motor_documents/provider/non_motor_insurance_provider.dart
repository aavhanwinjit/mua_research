import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nonMotorInsuranceProofFilePathProvider = StateProvider<String?>((ref) => null);
final insuredDocProofFilePathProvider = StateProvider<String?>((ref) => null);

final nonMotorInsuranceDocsTypesListLoading = StateProvider<bool>((ref) => false);

final selectedNonMotorInsuranceDocTypeProvider = StateProvider<NonMotorInsuranceDocumentTypeModel?>((ref) => null);

final nonMotorInsuranceDocOCRLoadingProvider = StateProvider<bool>((ref) => false);

final nonMotorInsuranceDocOCRApiResponse = StateProvider<ScanDocumentResponseBody?>((ref) => null);

final nonMotorInsuranceOtherNameProvider = StateProvider<String?>((ref) => null);
final nonMotorInsuranceSurnameProvider = StateProvider<String?>((ref) => null);

final ocrNameMatched = StateProvider<bool>((ref) => true);
