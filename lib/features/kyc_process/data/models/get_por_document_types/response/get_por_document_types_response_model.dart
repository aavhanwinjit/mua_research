// To parse this JSON data, do
//
//     final getPorDocumentTypesResponseModel = getPorDocumentTypesResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_por_document_types_response_model.freezed.dart';
part 'get_por_document_types_response_model.g.dart';

GetPorDocumentTypesResponseModel getPorDocumentTypesResponseModelFromJson(String str) =>
    GetPorDocumentTypesResponseModel.fromJson(json.decode(str));

String getPorDocumentTypesResponseModelToJson(GetPorDocumentTypesResponseModel data) => json.encode(data.toJson());

@freezed
class GetPorDocumentTypesResponseModel with _$GetPorDocumentTypesResponseModel {
  const factory GetPorDocumentTypesResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") GetPORDocumentTypesData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetPorDocumentTypesResponseModel;

  factory GetPorDocumentTypesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetPorDocumentTypesResponseModelFromJson(json);
}

@freezed
class GetPORDocumentTypesData with _$GetPORDocumentTypesData {
  const factory GetPORDocumentTypesData({
    @JsonKey(name: "rb") List<PORDocumentTypeModel>? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GetPORDocumentTypesData;

  factory GetPORDocumentTypesData.fromJson(Map<String, dynamic> json) => _$GetPORDocumentTypesDataFromJson(json);
}

@freezed
class PORDocumentTypeModel with _$PORDocumentTypeModel {
  const factory PORDocumentTypeModel({
    @JsonKey(name: "porDocumentTypeId") int? porDocumentTypeId,
    @JsonKey(name: "porDocType") String? porDocType,
    @JsonKey(name: "documentCode") String? documentCode,
  }) = _PORDocumentTypeModel;

  factory PORDocumentTypeModel.fromJson(Map<String, dynamic> json) => _$PORDocumentTypeModelFromJson(json);
}
