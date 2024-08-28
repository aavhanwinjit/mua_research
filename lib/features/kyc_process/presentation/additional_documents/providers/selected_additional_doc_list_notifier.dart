import 'package:ekyc/features/kyc_process/data/models/additional_document_element/additional_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/get_additional_document_types/response/get_additional_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_additional_doc_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class SelectedAdditionalDocListNotifier extends _$SelectedAdditionalDocListNotifier {
  @override
  List<AdditionalDocumentElement> build() {
    return [];
  }

  void updateDocTypesList(List<AdditionalDocumentElement> list) {
    state = list;
  }

  void addElementToList() {
    // final length = state.length;

    AdditionalDocumentElement element = AdditionalDocumentElement(
      documentElement: null,
      scanResponse: null,
      filePath: null,
    );

    state = [...state, element];
  }

  void removeElementFromList(int index) {
    debugPrint("index: $index");
    List<AdditionalDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    state = newList;
  }

  void updateElementsSelectedDocType({required int index, required AdditionalDocumentTypeModel element}) {
    AdditionalDocumentElement item = state[index];

    List<AdditionalDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.documentElement = element;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementsFilePath({required int index, required String? filePath}) {
    AdditionalDocumentElement item = state[index];

    List<AdditionalDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.filePath = filePath;

    newList.insert(index, item);

    state = newList;
  }

  void updateElementScanResponse({required int index, required ScanDocumentResponseBody? scanResponse}) {
    AdditionalDocumentElement item = state[index];

    List<AdditionalDocumentElement> newList = List.from(state);
    newList.removeAt(index);

    item.scanResponse = scanResponse;

    newList.insert(index, item);

    state = newList;
  }

  void clearElementsFilePath({required int index}) {
    AdditionalDocumentElement item = state[index];

    List<AdditionalDocumentElement> newList = List.from(state);
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

  List<AdditionalDocumentElement> list() {
    return state;
  }
}
