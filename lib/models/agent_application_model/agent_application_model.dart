// To parse this JSON data, do
//
//     final agentApplicationModel = agentApplicationModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_application_model.freezed.dart';
part 'agent_application_model.g.dart';

AgentApplicationModel agentApplicationModelFromJson(String str) => AgentApplicationModel.fromJson(json.decode(str));

String agentApplicationModelToJson(AgentApplicationModel data) => json.encode(data.toJson());

@freezed
class AgentApplicationModel with _$AgentApplicationModel {
  const factory AgentApplicationModel({
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "applicationRefNo") String? applicationRefNo,
    @JsonKey(name: "agentId") int? agentId,
    @JsonKey(name: "applicationStatus") String? applicationStatus,
    @JsonKey(name: "mobileNumber") String? mobileNumber,
    @JsonKey(name: "emailId") String? emailId,
    @JsonKey(name: "maritalStatus") String? maritalStatus,
    @JsonKey(name: "nationality") String? nationality,
    @JsonKey(name: "kycTypeId") int? kycTypeId,
    @JsonKey(name: "quoteNumber") String? quoteNumber,
    @JsonKey(name: "policyNumber") String? policyNumber,
    @JsonKey(name: "idDocumentTypeId") dynamic idDocumentTypeId,
    @JsonKey(name: "idDocFrontImagePath") dynamic idDocFrontImagePath,
    @JsonKey(name: "idDocBackImagePath") dynamic idDocBackImagePath,
    @JsonKey(name: "idDocSurname") dynamic idDocSurname,
    @JsonKey(name: "idDocOtherName") dynamic idDocOtherName,
    @JsonKey(name: "idDocNumber") dynamic idDocNumber,
    @JsonKey(name: "idDocPolicyNumber") dynamic idDocPolicyNumber,
    @JsonKey(name: "isIDVerificationCompleted") bool? isIdVerificationCompleted,
    @JsonKey(name: "addressDocumentTypeId") dynamic addressDocumentTypeId,
    @JsonKey(name: "addressDocImagePath") dynamic addressDocImagePath,
    @JsonKey(name: "addressDocSurname") dynamic addressDocSurname,
    @JsonKey(name: "addressDocOtherName") dynamic addressDocOtherName,
    @JsonKey(name: "addressDocBillDate") dynamic addressDocBillDate,
    @JsonKey(name: "addressDocAddress") dynamic addressDocAddress,
    @JsonKey(name: "isAddressVerificationCompleted") bool? isAddressVerificationCompleted,
    @JsonKey(name: "porRequired") bool? porRequired,
    @JsonKey(name: "insuredDocumentTypeId1") dynamic insuredDocumentTypeId1,
    @JsonKey(name: "insuredDocumentTypeId2") dynamic insuredDocumentTypeId2,
    @JsonKey(name: "insuredDocumentTypeId3") dynamic insuredDocumentTypeId3,
    @JsonKey(name: "insuredDocLastName") dynamic insuredDocLastName,
    @JsonKey(name: "insureDocIssueDate") dynamic insureDocIssueDate,
    @JsonKey(name: "insuredDocImagePath1") dynamic insuredDocImagePath1,
    @JsonKey(name: "insuredDocImagePath2") dynamic insuredDocImagePath2,
    @JsonKey(name: "insuredDocImagePath3") dynamic insuredDocImagePath3,
    @JsonKey(name: "isPORDocVerificationCompleted") bool? isPorDocVerificationCompleted,
    @JsonKey(name: "policyDocumentTypeId") dynamic policyDocumentTypeId,
    @JsonKey(name: "policyDocImagePath") dynamic policyDocImagePath,
    @JsonKey(name: "isPolicyDocVerificationCompleted") bool? isPolicyDocVerificationCompleted,
    @JsonKey(name: "motorInsuranceDocumentTypeId") dynamic motorInsuranceDocumentTypeId,
    @JsonKey(name: "motorDocuImagePath") dynamic motorDocImagePath,
    @JsonKey(name: "isMotorDocVerificationCompleted")
    bool? isMotorDocVerificationCompleted,
    @JsonKey(name: "additionalDocumentTypeId") dynamic additionalDocumentTypeId,
    @JsonKey(name: "additionalDocImagePath") dynamic additionalDocImagePath,
    @JsonKey(name: "isAdditionalDocVerificationCompleted") bool? isAdditionalDocVerificationCompleted,
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") dynamic crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") dynamic lmdBy,
  }) = _AgentApplicationModel;

  factory AgentApplicationModel.fromJson(Map<String, dynamic> json) => _$AgentApplicationModelFromJson(json);
}
