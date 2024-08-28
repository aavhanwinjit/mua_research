import 'package:ekyc/features/kyc_process/data/models/get_additional_document_types/response/get_additional_document_types_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'additional_doc_type_notifier.g.dart';

@Riverpod(keepAlive: true)
class AdditionalDocTypeNotifier extends _$AdditionalDocTypeNotifier {
  @override
  List<AdditionalDocumentTypeModel> build() {
    return [];
  }

  void updateDocTypesList(List<AdditionalDocumentTypeModel> list) {
    state = list;
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<AdditionalDocumentTypeModel> nonMotorInsuranceDocsTypesList() {
    return state;
  }
}
