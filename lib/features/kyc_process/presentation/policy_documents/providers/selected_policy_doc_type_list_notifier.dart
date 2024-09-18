import 'package:ekyc/features/kyc_process/data/models/get_policy_document_types/response/get_policy_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/policy_document_element.dart/policy_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_policy_doc_type_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class SelectedPolicyDocTypeListNotifier extends _$SelectedPolicyDocTypeListNotifier {
  @override
  List<PolicyDocumentElement> build() {
    return [];
  }

  void updateDocTypesList(List<PolicyDocumentElement> list) {
    state = list;
  }

  // void addFirstElementToList() {
  //   PORDocumentElement element = PORDocumentElement(documentElement: null, scanResponse: null);

  //   state = [...state, element];
  // }

  void addElementToList() {
    // final length = state.length;

    PolicyDocumentElement element = PolicyDocumentElement(
      documentElement: null,
      scanResponse: null,
      filePath: null,
      // pdfPath: null,
      // scanResponse2: null,
    );

    state = [...state, element];
  }

  void removeElementFromList(int index) {
    debugPrint("index: $index");
    List<PolicyDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    state = newList;
  }

  void updateElementsSelectedDocType({required int index, required PolicyDocumentTypeModel element}) {
    PolicyDocumentElement item = state[index];

    List<PolicyDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.documentElement = element;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementsFilePath({required int index, required String? filePath}) {
    PolicyDocumentElement item = state[index];

    List<PolicyDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.filePath = filePath;

    newList.insert(index, item);

    state = newList;
  }

  // void updateElementsPdfFilePath({required int index, required String? filePath}) {
  //   PolicyDocumentElement item = state[index];

  //   List<PolicyDocumentElement> newList = List.from(state);
  //   newList.removeAt(index);

  //   item.pdfPath = filePath;

  //   newList.insert(index, item);

  //   state = newList;
  // }

  void updateElementScanResponse({required int index, required ScanDocumentResponseBody? scanResponse}) {
    PolicyDocumentElement item = state[index];

    List<PolicyDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.scanResponse = scanResponse;

    newList.insert(index, item);

    state = newList;
  }

  // void updateElementScanResponse2({required int index, required ScanDocumentResponseBody? scanResponse}) {
  //   PolicyDocumentElement item = state[index];

  //   List<PolicyDocumentElement> newList = List.from(state);
  //   newList.removeAt(index);

  //   item.scanResponse2 = scanResponse;

  //   newList.insert(index, item);

  //   state = newList;
  // }

  void clearElementsFilePath({required int index}) {
    PolicyDocumentElement item = state[index];

    List<PolicyDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.filePath = null;

    newList.insert(index, item);

    state = newList;
  }

  // void clearElementsPdfFilePath({required int index}) {
  //   PolicyDocumentElement item = state[index];

  //   List<PolicyDocumentElement> newList = List.from(state);
  //   newList.removeAt(index);

  //   item.pdfPath = null;

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

  List<PolicyDocumentElement> list() {
    return state;
  }
}
