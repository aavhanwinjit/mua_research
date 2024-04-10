import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'por_docs_types_notifier.g.dart';

@Riverpod(keepAlive: true)
class PORDocsTypesNotifier extends _$PORDocsTypesNotifier {
  @override
  List<PORDocumentTypeModel> build() {
    return [];
  }

  void updateDocTypesList(List<PORDocumentTypeModel> list) {
    state = list;
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<PORDocumentTypeModel> porDocsTypesList() {
    return state;
  }
}
