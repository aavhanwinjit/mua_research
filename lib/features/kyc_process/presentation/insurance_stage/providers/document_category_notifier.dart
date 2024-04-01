import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'document_category_notifier.g.dart';

@Riverpod(keepAlive: true)
class DocumentCategoryNotifier extends _$DocumentCategoryNotifier {
  @override
  List<DocumentCategoryModel> build() {
    return [];
  }

  void updateList(List<DocumentCategoryModel> list) {
    state = list;
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<DocumentCategoryModel> documentCattegoryList() {
    return state;
  }
}
