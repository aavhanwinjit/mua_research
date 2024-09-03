import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/por_document_element/por_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/pages/edit_insured_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_por_doc_type_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class SelectedPorDocTypeListNotifier extends _$SelectedPorDocTypeListNotifier {
  @override
  List<PORDocumentElement> build() {
    return [];
  }

  void updateDocTypesList(List<PORDocumentElement> list) {
    state = list;
  }

  void updateDocTypesList2(List<InsuredDocEditModel> list) {
    for (var listItem in list) {
      for (var i = 0; i < state.length; i++) {
        if (state[i].documentElement?.documentCode == listItem.documentElement?.documentCode) {
          state[i].extractedLastName = listItem.extractedLastName;
          state[i].issueDate = listItem.issueDate;
        }
      }
    }

    // for (var element in list) {
    //   if(element.documentElement.documentCode ==)
    // }
    // state = list;
  }

  // void addFirstElementToList() {
  //   PORDocumentElement element = PORDocumentElement(documentElement: null, scanResponse: null);

  //   state = [...state, element];
  // }

  void addElementToList() {
    // final length = state.length;

    PORDocumentElement element = PORDocumentElement(
      documentElement: null,
      scanResponse: null,
      filePath: null,
    );

    state = [...state, element];
  }

  void removeElementFromList(int index) {
    debugPrint("index: $index");
    List<PORDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    state = newList;
  }

  void updateElementsSelectedDocType({required int index, required PORDocumentTypeModel element}) {
    PORDocumentElement item = state[index];

    List<PORDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.documentElement = element;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementsFilePath({required int index, required String? filePath}) {
    PORDocumentElement item = state[index];

    List<PORDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.filePath = filePath;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementScanResponse({required int index, required ScanDocumentResponseBody? scanResponse}) {
    PORDocumentElement item = state[index];

    List<PORDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.scanResponse = scanResponse;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementOcrFirstNameAndLastName({
    required int index,
    required String? lastName,
  }) {
    PORDocumentElement item = state[index];

    List<PORDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.extractedLastName = lastName;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementIssueDate({
    required int index,
    required String? issueDate,
  }) {
    debugPrint("inside update issue date function");

    PORDocumentElement item = state[index];

    List<PORDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.issueDate = issueDate;

    newList.insert(index, item);

    state = newList;
  }

  void clearElementsFilePath({required int index}) {
    PORDocumentElement item = state[index];

    List<PORDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.filePath = null;

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

  List<PORDocumentElement> list() {
    return state;
  }
}
