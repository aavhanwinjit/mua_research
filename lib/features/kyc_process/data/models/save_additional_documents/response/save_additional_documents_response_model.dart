// To parse this JSON data, do
//
//     final saveAdditionalDocumentsResponseModel = saveAdditionalDocumentsResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_additional_documents_response_model.freezed.dart';
part 'save_additional_documents_response_model.g.dart';

SaveAdditionalDocumentsResponseModel saveAdditionalDocumentsResponseModelFromJson(String str) =>
    SaveAdditionalDocumentsResponseModel.fromJson(json.decode(str));

String saveAdditionalDocumentsResponseModelToJson(SaveAdditionalDocumentsResponseModel data) =>
    json.encode(data.toJson());

@freezed
class SaveAdditionalDocumentsResponseModel with _$SaveAdditionalDocumentsResponseModel {
  const factory SaveAdditionalDocumentsResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SaveAdditionalDocumentsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SaveAdditionalDocumentsResponseModel;

  factory SaveAdditionalDocumentsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SaveAdditionalDocumentsResponseModelFromJson(json);
}

@freezed
class SaveAdditionalDocumentsData with _$SaveAdditionalDocumentsData {
  const factory SaveAdditionalDocumentsData({
    @JsonKey(name: "rb") AgentApplicationModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SaveAdditionalDocumentsData;

  factory SaveAdditionalDocumentsData.fromJson(Map<String, dynamic> json) =>
      _$SaveAdditionalDocumentsDataFromJson(json);
}
