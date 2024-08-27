import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/non_motor_insurance_document_element/non_motor_insurance_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_non_motor_insurance_doc_type_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class SelectedNonMotorInsuranceDocTypeListNotifier extends _$SelectedNonMotorInsuranceDocTypeListNotifier {
  @override
  List<NonMotorInsuranceDocumentElement> build() {
    return [];
  }

  void updateDocTypesList(List<NonMotorInsuranceDocumentElement> list) {
    state = list;
  }

  // void addFirstElementToList() {
  //   MotorInsuranceDocumentElement element = MotorInsuranceDocumentElement(documentElement: null, scanResponse: null);

  //   state = [...state, element];
  // }

  void addElementToList() {
    // final length = state.length;

    NonMotorInsuranceDocumentElement element = NonMotorInsuranceDocumentElement(
      documentElement: null,
      scanResponse: null,
      nonMotorDocImagePath: null,
    );

    state = [...state, element];
  }

  void removeElementFromList(int index) {
    debugPrint("index: $index");
    List<NonMotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    state = newList;
  }

  void updateElementsSelectedDocType({required int index, required NonMotorInsuranceDocumentTypeModel element}) {
    NonMotorInsuranceDocumentElement item = state[index];

    List<NonMotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.documentElement = element;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementsFilePath({required int index, required String? filePath}) {
    NonMotorInsuranceDocumentElement item = state[index];

    List<NonMotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.nonMotorDocImagePath = filePath;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementScanResponse({required int index, required ScanDocumentResponseBody? scanResponse}) {
    NonMotorInsuranceDocumentElement item = state[index];

    List<NonMotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.scanResponse = scanResponse;

    newList.insert(index, item);

    state = newList;
  }

  void clearElementsFilePath({required int index}) {
    NonMotorInsuranceDocumentElement item = state[index];

    List<NonMotorInsuranceDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.nonMotorDocImagePath = null;

    newList.insert(index, item);

    state = newList;
  }

  void clearList() {
    state = [];
  }

  bool haveList() {
    return state.isNotEmpty;
  }

  bool haveNoList() {
    return state.isEmpty;
  }

  List<NonMotorInsuranceDocumentElement> list() {
    return state;
  }
}
