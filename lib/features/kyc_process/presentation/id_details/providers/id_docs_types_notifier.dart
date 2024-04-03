import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'id_docs_types_notifier.g.dart';

@Riverpod(keepAlive: true)
class IdDocsTypesNotifier extends _$IdDocsTypesNotifier {
  @override
  List<IdentityDocumentTypeModel> build() {
    return [];
  }

  void updateDocTypesList(List<IdentityDocumentTypeModel> list) {
    state = list;
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<IdentityDocumentTypeModel> idDocsTypesList() {
    return state;
  }
}
