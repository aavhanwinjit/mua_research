import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final documentCategoryListLoading = StateProvider<bool>((ref) => false);

final selectedDocumentCategoryProvider = StateProvider<DocumentCategoryModel?>((ref) => null);

final pdfLoadingProvider = StateProvider<bool>((ref) => false);
