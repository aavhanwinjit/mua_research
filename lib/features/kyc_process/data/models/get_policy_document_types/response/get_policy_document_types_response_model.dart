// To parse this JSON data, do
//
//     final getPolicyDocumentTypesResponseModel = getPolicyDocumentTypesResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_policy_document_types_response_model.freezed.dart';
part 'get_policy_document_types_response_model.g.dart';

GetPolicyDocumentTypesResponseModel getPolicyDocumentTypesResponseModelFromJson(String str) =>
    GetPolicyDocumentTypesResponseModel.fromJson(json.decode(str));

String getPolicyDocumentTypesResponseModelToJson(GetPolicyDocumentTypesResponseModel data) =>
    json.encode(data.toJson());

@freezed
class GetPolicyDocumentTypesResponseModel with _$GetPolicyDocumentTypesResponseModel {
  const factory GetPolicyDocumentTypesResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") GetPolicyDocumentTypesData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetPolicyDocumentTypesResponseModel;

  factory GetPolicyDocumentTypesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetPolicyDocumentTypesResponseModelFromJson(json);
}

@freezed
class GetPolicyDocumentTypesData with _$GetPolicyDocumentTypesData {
  const factory GetPolicyDocumentTypesData({
    @JsonKey(name: "rb") List<PolicyDocumentTypeModel>? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GetPolicyDocumentTypesData;

  factory GetPolicyDocumentTypesData.fromJson(Map<String, dynamic> json) => _$GetPolicyDocumentTypesDataFromJson(json);
}

@freezed
class PolicyDocumentTypeModel with _$PolicyDocumentTypeModel {
  const factory PolicyDocumentTypeModel({
    @JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
    @JsonKey(name: "policyDocTypes") String? policyDocTypes,
    @JsonKey(name: "documentCode") String? documentCode,
  }) = _PolicyDocumentTypeModel;

  factory PolicyDocumentTypeModel.fromJson(Map<String, dynamic> json) => _$PolicyDocumentTypeModelFromJson(json);
}
