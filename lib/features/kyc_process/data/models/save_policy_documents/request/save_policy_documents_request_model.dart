// To parse this JSON data, do
//
//     final savePolicyDocumentsRequestModel = savePolicyDocumentsRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_policy_documents_request_model.freezed.dart';
part 'save_policy_documents_request_model.g.dart';

SavePolicyDocumentsRequestModel savePolicyDocumentsRequestModelFromJson(String str) =>
    SavePolicyDocumentsRequestModel.fromJson(json.decode(str));

String savePolicyDocumentsRequestModelToJson(SavePolicyDocumentsRequestModel data) => json.encode(data.toJson());

@freezed
class SavePolicyDocumentsRequestModel with _$SavePolicyDocumentsRequestModel {
  const factory SavePolicyDocumentsRequestModel({
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "isPolicyDocVerificationCompleted") bool? isPolicyDocVerificationCompleted,
    @JsonKey(name: "policyDoumentDetailsModel") List<PolicyDoumentDetailsModel>? policyDoumentDetailsModel,
  }) = _SavePolicyDocumentsRequestModel;

  factory SavePolicyDocumentsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SavePolicyDocumentsRequestModelFromJson(json);
}

@freezed
class PolicyDoumentDetailsModel with _$PolicyDoumentDetailsModel {
  const factory PolicyDoumentDetailsModel({
    @JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
    @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
    @JsonKey(name: "policyDocImagePath") String? policyDocImagePath,
    // @JsonKey(name: "uploadPDFDocumentId") int? uploadPDFDocumentId,
    // @JsonKey(name: "policyDocPDFPath") String? policyDocPDFPath,
  }) = _PolicyDoumentDetailsModel;

  factory PolicyDoumentDetailsModel.fromJson(Map<String, dynamic> json) => _$PolicyDoumentDetailsModelFromJson(json);
}
