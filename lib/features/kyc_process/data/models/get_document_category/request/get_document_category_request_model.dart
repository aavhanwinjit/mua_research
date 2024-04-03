// To parse this JSON data, do
//
//     final getDocumentCategoryRequestModel = getDocumentCategoryRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_document_category_request_model.freezed.dart';
part 'get_document_category_request_model.g.dart';

GetDocumentCategoryRequestModel getDocumentCategoryRequestModelFromJson(String str) =>
    GetDocumentCategoryRequestModel.fromJson(json.decode(str));

String getDocumentCategoryRequestModelToJson(GetDocumentCategoryRequestModel data) => json.encode(data.toJson());

@freezed
class GetDocumentCategoryRequestModel with _$GetDocumentCategoryRequestModel {
  const factory GetDocumentCategoryRequestModel({
    @JsonKey(name: "id") int? id,
  }) = _GetDocumentCategoryRequestModel;

  factory GetDocumentCategoryRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GetDocumentCategoryRequestModelFromJson(json);
}
