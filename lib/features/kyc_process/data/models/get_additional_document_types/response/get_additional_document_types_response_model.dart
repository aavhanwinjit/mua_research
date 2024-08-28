// To parse this JSON data, do
//
//     final getAdditionalDocumentTypesResponseModel = getAdditionalDocumentTypesResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_additional_document_types_response_model.freezed.dart';
part 'get_additional_document_types_response_model.g.dart';

GetAdditionalDocumentTypesResponseModel getAdditionalDocumentTypesResponseModelFromJson(String str) =>
    GetAdditionalDocumentTypesResponseModel.fromJson(json.decode(str));

String getAdditionalDocumentTypesResponseModelToJson(GetAdditionalDocumentTypesResponseModel data) =>
    json.encode(data.toJson());

@freezed
class GetAdditionalDocumentTypesResponseModel with _$GetAdditionalDocumentTypesResponseModel {
  const factory GetAdditionalDocumentTypesResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") GetAdditionalDocumentTypesData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetAdditionalDocumentTypesResponseModel;

  factory GetAdditionalDocumentTypesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAdditionalDocumentTypesResponseModelFromJson(json);
}

@freezed
class GetAdditionalDocumentTypesData with _$GetAdditionalDocumentTypesData {
  const factory GetAdditionalDocumentTypesData({
    @JsonKey(name: "rb") List<AdditionalDocumentTypeModel>? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GetAdditionalDocumentTypesData;

  factory GetAdditionalDocumentTypesData.fromJson(Map<String, dynamic> json) =>
      _$GetAdditionalDocumentTypesDataFromJson(json);
}

@freezed
class AdditionalDocumentTypeModel with _$AdditionalDocumentTypeModel {
  const factory AdditionalDocumentTypeModel({
    @JsonKey(name: "additionalDoumentTypeId") int? additionalDoumentTypeId,
    @JsonKey(name: "additionalDoumentTypeName") String? additionalDoumentTypeName,
    @JsonKey(name: "documentCode") String? documentCode,
  }) = _AdditionalDocumentTypeModel;

  factory AdditionalDocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$AdditionalDocumentTypeModelFromJson(json);
}
