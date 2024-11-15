import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final nicCardFrontFilePathProvider = StateProvider<String?>((ref) => null);
// final nicCardBackFilePathProvider = StateProvider<String?>((ref) => null);

// final passportFrontFilePathProvider = StateProvider<String?>((ref) => null);
// final passportBackFilePathProvider = StateProvider<String?>((ref) => null);

final idDocFrontFilePathProvider = StateProvider<String?>((ref) => null);
final idDocBackFilePathProvider = StateProvider<String?>((ref) => null);

final idDocFrontScanDocResultProvider = StateProvider<ScanDocumentResponseBody?>((ref) => null);
final idDocBackScanDocResultProvider = StateProvider<ScanDocumentResponseBody?>((ref) => null);

final ocrLoadingProvider = StateProvider<bool>((ref) => false);

final extractedFirstNameProvider = StateProvider<String?>((ref) => null);
final extractedSurNameProvider = StateProvider<String?>((ref) => null);
final extractedNICIDNumberProvider = StateProvider<String?>((ref) => null);

final idDocsTypesListLoading = StateProvider<bool>((ref) => false);

final selectedIdDocTypeProvider = StateProvider<IdentityDocumentTypeModel?>((ref) => null);

final passportFilePathProvider = StateProvider<String?>((ref) => null);

final extractedPassportFirstNameProvider = StateProvider<String?>((ref) => null);
final extractedPassportSurNameProvider = StateProvider<String?>((ref) => null);
final extractedPassportNumberProvider = StateProvider<String?>((ref) => null);
