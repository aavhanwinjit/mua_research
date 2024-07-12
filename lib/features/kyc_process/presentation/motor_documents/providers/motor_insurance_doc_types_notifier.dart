import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'motor_insurance_doc_types_notifier.g.dart';

@Riverpod(keepAlive: true)
class MotorInsuranceDocsTypesNotifier extends _$MotorInsuranceDocsTypesNotifier {
  @override
  List<MotorInsuranceDocumentTypeModel> build() {
    return [];
  }

  void updateDocTypesList(List<MotorInsuranceDocumentTypeModel> list) {
    state = list;
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<MotorInsuranceDocumentTypeModel> motorInsuranceDocsTypesList() {
    return state;
  }

  void removeItemFromList(int? id) {
    if (id != null) {
      List<MotorInsuranceDocumentTypeModel> newList = [...state];

      newList.removeWhere(
        (element) => element.mDocumentTypeId == id,
      );

      state = newList;
    }
  }
}
