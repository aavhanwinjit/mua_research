// To parse this JSON data, do
//
//     final getIdentityDocumentTypesResponseModel = getIdentityDocumentTypesResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_identity_document_types_response_model.freezed.dart';
part 'get_identity_document_types_response_model.g.dart';

GetIdentityDocumentTypesResponseModel getIdentityDocumentTypesResponseModelFromJson(String str) =>
    GetIdentityDocumentTypesResponseModel.fromJson(json.decode(str));

String getIdentityDocumentTypesResponseModelToJson(GetIdentityDocumentTypesResponseModel data) =>
    json.encode(data.toJson());

@freezed
class GetIdentityDocumentTypesResponseModel with _$GetIdentityDocumentTypesResponseModel {
  const factory GetIdentityDocumentTypesResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") IdentityDocumentTypesData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetIdentityDocumentTypesResponseModel;

  factory GetIdentityDocumentTypesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetIdentityDocumentTypesResponseModelFromJson(json);
}

@freezed
class IdentityDocumentTypesData with _$IdentityDocumentTypesData {
  const factory IdentityDocumentTypesData({
    @JsonKey(name: "rb") List<IdentityDocumentTypeModel>? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _IdentityDocumentTypesData;

  factory IdentityDocumentTypesData.fromJson(Map<String, dynamic> json) => _$IdentityDocumentTypesDataFromJson(json);
}

@freezed
class IdentityDocumentTypeModel with _$IdentityDocumentTypeModel {
  const factory IdentityDocumentTypeModel({
    @JsonKey(name: "identityDocumentTypeId") int? identityDocumentTypeId,
    @JsonKey(name: "identityDocType") String? identityDocType,
    @JsonKey(name: "documentCode") String? documentCode,
  }) = _IdentityDocumentTypeModel;

  factory IdentityDocumentTypeModel.fromJson(Map<String, dynamic> json) => _$IdentityDocumentTypeModelFromJson(json);
}
