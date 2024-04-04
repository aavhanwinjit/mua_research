import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_docs_types_notifier.g.dart';

@Riverpod(keepAlive: true)
class AddressDocsTypesNotifier extends _$AddressDocsTypesNotifier {
  @override
  List<AddressDocumentTypeModel> build() {
    return [];
  }

  void updateDocTypesList(List<AddressDocumentTypeModel> list) {
    state = list;
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<AddressDocumentTypeModel> addressDocsTypesList() {
    return state;
  }
}
