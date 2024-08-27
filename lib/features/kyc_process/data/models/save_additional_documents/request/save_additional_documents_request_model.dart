// To parse this JSON data, do
//
//     final saveAdditionalDocumentsRequestModel = saveAdditionalDocumentsRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_additional_documents_request_model.freezed.dart';
part 'save_additional_documents_request_model.g.dart';

SaveAdditionalDocumentsRequestModel saveAdditionalDocumentsRequestModelFromJson(String str) =>
    SaveAdditionalDocumentsRequestModel.fromJson(json.decode(str));

String saveAdditionalDocumentsRequestModelToJson(SaveAdditionalDocumentsRequestModel data) =>
    json.encode(data.toJson());

@freezed
class SaveAdditionalDocumentsRequestModel with _$SaveAdditionalDocumentsRequestModel {
  const factory SaveAdditionalDocumentsRequestModel({
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "isAdditionalDocVerificationCompleted") bool? isAdditionalDocVerificationCompleted,
    @JsonKey(name: "additionalDocumentDetailsModel")
    List<AdditionalDocumentDetailsModel>? additionalDocumentDetailsModel,
  }) = _SaveAdditionalDocumentsRequestModel;

  factory SaveAdditionalDocumentsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveAdditionalDocumentsRequestModelFromJson(json);
}

@freezed
class AdditionalDocumentDetailsModel with _$AdditionalDocumentDetailsModel {
  const factory AdditionalDocumentDetailsModel({
    @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
    @JsonKey(name: "additionalDocImagePath") String? additionalDocImagePath,
    @JsonKey(name: "additionalDoumentTypeId") int? additionalDoumentTypeId,
  }) = _AdditionalDocumentDetailsModel;

  factory AdditionalDocumentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AdditionalDocumentDetailsModelFromJson(json);
}
