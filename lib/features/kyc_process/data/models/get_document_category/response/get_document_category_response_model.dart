// To parse this JSON data, do
//
//     final getDocumentCategoryResponseModel = getDocumentCategoryResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_document_category_response_model.freezed.dart';
part 'get_document_category_response_model.g.dart';

GetDocumentCategoryResponseModel getDocumentCategoryResponseModelFromJson(String str) =>
    GetDocumentCategoryResponseModel.fromJson(json.decode(str));

String getDocumentCategoryResponseModelToJson(GetDocumentCategoryResponseModel data) => json.encode(data.toJson());

@freezed
class GetDocumentCategoryResponseModel with _$GetDocumentCategoryResponseModel {
  const factory GetDocumentCategoryResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") GetDocumentCategoryData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetDocumentCategoryResponseModel;

  factory GetDocumentCategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetDocumentCategoryResponseModelFromJson(json);
}

@freezed
class GetDocumentCategoryData with _$GetDocumentCategoryData {
  const factory GetDocumentCategoryData({
    @JsonKey(name: "rb") List<DocumentCategoryModel>? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GetDocumentCategoryData;

  factory GetDocumentCategoryData.fromJson(Map<String, dynamic> json) => _$GetDocumentCategoryDataFromJson(json);
}

@freezed
class DocumentCategoryModel with _$DocumentCategoryModel {
  const factory DocumentCategoryModel({
    @JsonKey(name: "documentCategoryId") int? documentCategoryId,
    @JsonKey(name: "documentCategory") String? documentCategory,
    @JsonKey(name: "kycTypeId") int? kycTypeId,
  }) = _DocumentCategoryModel;

  factory DocumentCategoryModel.fromJson(Map<String, dynamic> json) => _$DocumentCategoryModelFromJson(json);
}
