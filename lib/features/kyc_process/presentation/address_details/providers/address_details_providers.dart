import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addressProofFilePathProvider = StateProvider<String?>((ref) => null);
final insuredDocProofFilePathProvider = StateProvider<String?>((ref) => null);

final addressDocsTypesListLoading = StateProvider<bool>((ref) => false);

final selectedAddressDocTypeProvider = StateProvider<AddressDocumentTypeModel?>((ref) => null);

final addressDocOCRLoadingProvider = StateProvider<bool>((ref) => false);

final addressDocOCRApiResponse = StateProvider<ScanDocumentResponseBody?>((ref) => null);
