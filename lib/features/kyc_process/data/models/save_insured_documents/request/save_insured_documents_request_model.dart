// To parse this JSON data, do
//
//     final saveInsuredDocumentsRequestModel = saveInsuredDocumentsRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_insured_documents_request_model.freezed.dart';
part 'save_insured_documents_request_model.g.dart';

SaveInsuredDocumentsRequestModel saveInsuredDocumentsRequestModelFromJson(String str) =>
    SaveInsuredDocumentsRequestModel.fromJson(json.decode(str));

String saveInsuredDocumentsRequestModelToJson(SaveInsuredDocumentsRequestModel data) => json.encode(data.toJson());

@freezed
class SaveInsuredDocumentsRequestModel with _$SaveInsuredDocumentsRequestModel {
  const factory SaveInsuredDocumentsRequestModel({
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "isPORDocVerificationCompleted") bool? isPorDocVerificationCompleted,
    @JsonKey(name: "insuredDoumentDetailsModel") List<InsuredDoumentDetailsModel>? insuredDoumentDetailsModel,
  }) = _SaveInsuredDocumentsRequestModel;

  factory SaveInsuredDocumentsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveInsuredDocumentsRequestModelFromJson(json);
}

@freezed
class InsuredDoumentDetailsModel with _$InsuredDoumentDetailsModel {
  const factory InsuredDoumentDetailsModel({
    @JsonKey(name: "insuredDocumentTypeId") int? insuredDocumentTypeId,
    @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
    @JsonKey(name: "lastName") String? lastName,
    @JsonKey(name: "issueDate") DateTime? issueDate,
    @JsonKey(name: "insuredDouImagePath") String? insuredDouImagePath,
  }) = _InsuredDoumentDetailsModel;

  factory InsuredDoumentDetailsModel.fromJson(Map<String, dynamic> json) => _$InsuredDoumentDetailsModelFromJson(json);
}
