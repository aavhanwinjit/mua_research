import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'non_motor_insurance_doc_types_notifier.g.dart';

@Riverpod(keepAlive: true)
class NonMotorInsuranceDocsTypesNotifier
    extends _$NonMotorInsuranceDocsTypesNotifier {
  @override
  List<NonMotorInsuranceDocumentTypeModel> build() {
    return [];
  }

  void updateDocTypesList(List<NonMotorInsuranceDocumentTypeModel> list) {
    state = list;
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<NonMotorInsuranceDocumentTypeModel> nonMotorInsuranceDocsTypesList() {
    return state;
  }
}
