import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/motor_insurance_document_element/motor_insurance_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_motor_insurance_doc_type_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class SelectedMotorInsuranceDocTypeListNotifier extends _$SelectedMotorInsuranceDocTypeListNotifier {
  @override
  List<MotorInsuranceDocumentElement> build() {
    return [];
  }

  void updateDocTypesList(List<MotorInsuranceDocumentElement> list) {
    state = list;
  }

  // void addFirstElementToList() {
  //   MotorInsuranceDocumentElement element = MotorInsuranceDocumentElement(documentElement: null, scanResponse: null);

  //   state = [...state, element];
  // }

  void addElementToList() {
    // final length = state.length;

    MotorInsuranceDocumentElement element = MotorInsuranceDocumentElement(
      documentElement: null,
      scanResponse: null,
      motorDocImagePath: null,
      // motorDocPdfPath: null,
      // scanResponse2: null,
    );

    state = [...state, element];
  }

  void removeElementFromList(int index) {
    List<MotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    state = newList;
  }

  void updateElementsSelectedDocType({required int index, required MotorInsuranceDocumentTypeModel element}) {
    MotorInsuranceDocumentElement item = state[index];

    List<MotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.documentElement = element;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementsFilePath({required int index, required String? filePath}) {
    MotorInsuranceDocumentElement item = state[index];

    List<MotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.motorDocImagePath = filePath;

    newList.insert(index, item);

    state = newList;
  }

  // void updateElementsPdfFilePath({required int index, required String? filePath}) {
  //   MotorInsuranceDocumentElement item = state[index];

  //   List<MotorInsuranceDocumentElement> newList = List.from(state);
  //   newList.removeAt(index);

  //   item.motorDocPdfPath = filePath;

  //   newList.insert(index, item);

  //   state = newList;
  // }

  void updateElementScanResponse({required int index, required ScanDocumentResponseBody? scanResponse}) {
    MotorInsuranceDocumentElement item = state[index];

    List<MotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.scanResponse = scanResponse;

    newList.insert(index, item);

    state = newList;
  }

  // void updateElementScanResponse2({required int index, required ScanDocumentResponseBody? scanResponse}) {
  //   MotorInsuranceDocumentElement item = state[index];

  //   List<MotorInsuranceDocumentElement> newList = List.from(state);
  //   newList.removeAt(index);

  //   item.scanResponse2 = scanResponse;

  //   newList.insert(index, item);

  //   state = newList;
  // }

  void updateElementsRegistrationNumber({required int index, required String registrationNumber}) {
    MotorInsuranceDocumentElement item = state[index];

    List<MotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.registrationNumber = registrationNumber;

    newList.insert(index, item);

    state = newList;
  }

  void clearElementsFilePath({required int index}) {
    MotorInsuranceDocumentElement item = state[index];

    List<MotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.motorDocImagePath = null;

    newList.insert(index, item);

    state = newList;
  }

  // void clearElementsPdfFilePath({required int index}) {
  //   MotorInsuranceDocumentElement item = state[index];

  //   List<MotorInsuranceDocumentElement> newList = List.from(state);
  //   newList.removeAt(index);

  //   item.motorDocPdfPath = null;

  //   newList.insert(index, item);

  //   state = newList;
  // }

  void clearList() {
    state = [];
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<MotorInsuranceDocumentElement> list() {
    return state;
  }
}
