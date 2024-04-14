import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/request/save_motor_insurance_documents_request_model.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_motor_insurance_doc_type_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class SelectedMotorInsuranceDocTypeListNotifier
    extends _$SelectedMotorInsuranceDocTypeListNotifier {
  @override
  List<MotorDocDetail> build() {
    return [];
  }

  void updateDocTypesList(List<MotorDocDetail> list) {
    state = list;
  }

  // void addFirstElementToList() {
  //   MotorDocDetail element = MotorDocDetail(documentElement: null, scanResponse: null);

  //   state = [...state, element];
  // }

  void addElementToList() {
    // final length = state.length;

    MotorDocDetail element = const MotorDocDetail(
        uploadDocumentId: null,
        motorDocumentTypeId: null,
        motorDocImagePath: null);

    state = [...state, element];
  }

  void removeElementFromList(int index) {
    debugPrint("index: $index");
    List<MotorDocDetail> newList = List.from(state);
    newList.removeAt(index);

    state = newList;
  }

  void updateElementsSelectedDocType(
      {required int index, required PORDocumentTypeModel element}) {
    MotorDocDetail item = state[index];

    List<MotorDocDetail> newList = List.from(state);
    newList.removeAt(index);

    // item.documentElement = element;

    newList.insert(index, item);

    state = newList;
  }

  // void updateElementsFilePath({required int index, required String filePath}) {
  //   MotorDocDetail item = state[index];

  //   List<MotorDocDetail> newList = List.from(state);
  //   newList.removeAt(index);

  //   item.motorDocImagePath = filePath;

  //   newList.insert(index, item);

  //   state = newList;
  // }

  // void clearElementsFilePath({required int index}) {
  //   MotorDocDetail item = state[index];

  //   List<MotorDocDetail> newList = List.from(state);
  //   newList.removeAt(index);

  //   item.motorDocImagePath = null;

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

  List<MotorDocDetail> list() {
    return state;
  }
}
