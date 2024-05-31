// To parse this JSON data, do
//
//     final savePorDocumentsRequestModel = savePorDocumentsRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_por_documents_request_model.freezed.dart';
part 'save_por_documents_request_model.g.dart';

SavePorDocumentsRequestModel savePorDocumentsRequestModelFromJson(String str) =>
    SavePorDocumentsRequestModel.fromJson(json.decode(str));

String savePorDocumentsRequestModelToJson(SavePorDocumentsRequestModel data) => json.encode(data.toJson());

@freezed
class SavePorDocumentsRequestModel with _$SavePorDocumentsRequestModel {
  const factory SavePorDocumentsRequestModel({
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "isPORDocVerificationCompleted") bool? isPorDocVerificationCompleted,
    @JsonKey(name: "porDocumentDetailsModel") List<PorDocumentDetailsModel>? porDocumentDetailsModel,
  }) = _SavePorDocumentsRequestModel;

  factory SavePorDocumentsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SavePorDocumentsRequestModelFromJson(json);
}

@freezed
class PorDocumentDetailsModel with _$PorDocumentDetailsModel {
  const factory PorDocumentDetailsModel({
    @JsonKey(name: "porDocumentTypeId") int? porDocumentTypeId,
    @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
    @JsonKey(name: "lastName") String? lastName,
    @JsonKey(name: "issueDate") String? issueDate,
    @JsonKey(name: "porDocImagePath") String? porDocImagePath,
  }) = _PorDocumentDetailsModel;

  factory PorDocumentDetailsModel.fromJson(Map<String, dynamic> json) => _$PorDocumentDetailsModelFromJson(json);
}
