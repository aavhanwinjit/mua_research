// To parse this JSON data, do
//
//     final savePolicyDocumentsResponseModel = savePolicyDocumentsResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_policy_documents_response_model.freezed.dart';
part 'save_policy_documents_response_model.g.dart';

SavePolicyDocumentsResponseModel savePolicyDocumentsResponseModelFromJson(String str) =>
    SavePolicyDocumentsResponseModel.fromJson(json.decode(str));

String savePolicyDocumentsResponseModelToJson(SavePolicyDocumentsResponseModel data) => json.encode(data.toJson());

@freezed
class SavePolicyDocumentsResponseModel with _$SavePolicyDocumentsResponseModel {
  const factory SavePolicyDocumentsResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SavePolicyDocumentsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SavePolicyDocumentsResponseModel;

  factory SavePolicyDocumentsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SavePolicyDocumentsResponseModelFromJson(json);
}

@freezed
class SavePolicyDocumentsData with _$SavePolicyDocumentsData {
  const factory SavePolicyDocumentsData({
    @JsonKey(name: "rb") AgentApplicationModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SavePolicyDocumentsData;

  factory SavePolicyDocumentsData.fromJson(Map<String, dynamic> json) => _$SavePolicyDocumentsDataFromJson(json);
}
