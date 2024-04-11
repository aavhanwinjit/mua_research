// To parse this JSON data, do
//
//     final savePorDocumentsResponseModel = savePorDocumentsResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_por_documents_response_model.freezed.dart';
part 'save_por_documents_response_model.g.dart';

SavePorDocumentsResponseModel savePorDocumentsResponseModelFromJson(String str) =>
    SavePorDocumentsResponseModel.fromJson(json.decode(str));

String savePorDocumentsResponseModelToJson(SavePorDocumentsResponseModel data) => json.encode(data.toJson());

@freezed
class SavePorDocumentsResponseModel with _$SavePorDocumentsResponseModel {
  const factory SavePorDocumentsResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SavePORDocumentsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SavePorDocumentsResponseModel;

  factory SavePorDocumentsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SavePorDocumentsResponseModelFromJson(json);
}

@freezed
class SavePORDocumentsData with _$SavePORDocumentsData {
  const factory SavePORDocumentsData({
    @JsonKey(name: "rb") AgentApplicationModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SavePORDocumentsData;

  factory SavePORDocumentsData.fromJson(Map<String, dynamic> json) => _$SavePORDocumentsDataFromJson(json);
}
