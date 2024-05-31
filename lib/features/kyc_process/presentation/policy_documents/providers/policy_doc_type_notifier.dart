import 'package:ekyc/features/kyc_process/data/models/get_policy_document_types/response/get_policy_document_types_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'policy_doc_type_notifier.g.dart';

@Riverpod(keepAlive: true)
class PolicyDocTypeNotifier extends _$PolicyDocTypeNotifier {
  @override
  List<PolicyDocumentTypeModel> build() {
    return [];
  }

  void updateDocTypesList(List<PolicyDocumentTypeModel> list) {
    state = list;
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<PolicyDocumentTypeModel> list() {
    return state;
  }
}
