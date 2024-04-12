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
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
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
    @JsonKey(name: "idDocumentTypeId") int? idDocumentTypeId,
    @JsonKey(name: "idDocFrontImagePath") String? idDocFrontImagePath,
    @JsonKey(name: "idDocBackImagePath") String? idDocBackImagePath,
    @JsonKey(name: "idDocSurname") String? idDocSurname,
    @JsonKey(name: "idDocOtherName") String? idDocOtherName,
    @JsonKey(name: "idDocNumber") String? idDocNumber,
    @JsonKey(name: "idDocPolicyNumber") String? idDocPolicyNumber,
    @JsonKey(name: "idDocFrontUploadedDocumentId") int? idDocFrontUploadedDocumentId,
    @JsonKey(name: "idDocBackUploadedDocumentId") int? idDocBackUploadedDocumentId,
    @JsonKey(name: "isIDVerificationCompleted") bool? isIdVerificationCompleted,
    @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
    @JsonKey(name: "addressDocImagePath") String? addressDocImagePath,
    @JsonKey(name: "addressDocSurname") String? addressDocSurname,
    @JsonKey(name: "addressDocOtherName") String? addressDocOtherName,
    @JsonKey(name: "addressDocBillDate") DateTime? addressDocBillDate,
    @JsonKey(name: "addressDocAddress") String? addressDocAddress,
    @JsonKey(name: "addressDocUploadedDocumentId") int? addressDocUploadedDocumentId,
    @JsonKey(name: "isAddressVerificationCompleted") bool? isAddressVerificationCompleted,
    @JsonKey(name: "porRequired") bool? porRequired,
    @JsonKey(name: "isPORDocVerificationCompleted") bool? isPorDocVerificationCompleted,
    @JsonKey(name: "isPolicyDocVerificationCompleted") bool? isPolicyDocVerificationCompleted,
    @JsonKey(name: "isAdditionalDocVerificationCompleted") bool? isAdditionalDocVerificationCompleted,
    @JsonKey(name: "isMotorDocVerificationCompleted") bool? isMotorDocVerificationCompleted,
    @JsonKey(name: "isNonMotorDocVerificationCompleted") bool? isNonMotorDocVerificationCompleted,
    @JsonKey(name: "addressDocumentTypes") AddressDocumentTypes? addressDocumentTypes,
    @JsonKey(name: "porDocumentDetails") List<PorDocumentDetail>? porDocumentDetails,
    @JsonKey(name: "policyDocumentDetails") List<PolicyDocumentDetail>? policyDocumentDetails,
    @JsonKey(name: "additionalDoumentDetails") List<AdditionalDoumentDetail>? additionalDoumentDetails,
    @JsonKey(name: "motorInsuranceDocumentDetails") List<MotorInsuranceDocumentDetail>? motorInsuranceDocumentDetails,
    @JsonKey(name: "nonMotorInsuranceDocumentDetails")
    List<NonMotorInsuranceDocumentDetail>? nonMotorInsuranceDocumentDetails,
  }) = _AgentApplicationModel;

  factory AgentApplicationModel.fromJson(Map<String, dynamic> json) => _$AgentApplicationModelFromJson(json);
}

@freezed
class AdditionalDoumentDetail with _$AdditionalDoumentDetail {
  const factory AdditionalDoumentDetail({
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
    @JsonKey(name: "additionalDoumentDetailId") int? additionalDoumentDetailId,
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
    @JsonKey(name: "additionalDocumentTypeId") int? additionalDocumentTypeId,
    @JsonKey(name: "additionalDocImagePath") String? additionalDocImagePath,
  }) = _AdditionalDoumentDetail;

  factory AdditionalDoumentDetail.fromJson(Map<String, dynamic> json) => _$AdditionalDoumentDetailFromJson(json);
}

@freezed
class AddressDocumentTypes with _$AddressDocumentTypes {
  const factory AddressDocumentTypes({
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
    @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
    @JsonKey(name: "addressDocType") String? addressDocType,
    @JsonKey(name: "documentCode") String? documentCode,
  }) = _AddressDocumentTypes;

  factory AddressDocumentTypes.fromJson(Map<String, dynamic> json) => _$AddressDocumentTypesFromJson(json);
}

@freezed
class MotorInsuranceDocumentDetail with _$MotorInsuranceDocumentDetail {
  const factory MotorInsuranceDocumentDetail({
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
    @JsonKey(name: "motorInsuranceDoumentDetailId") int? motorInsuranceDoumentDetailId,
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
    @JsonKey(name: "motorInsuranceDocumentTypeId") int? motorInsuranceDocumentTypeId,
    @JsonKey(name: "motorDocuImagePath") String? motorDocuImagePath,
  }) = _MotorInsuranceDocumentDetail;

  factory MotorInsuranceDocumentDetail.fromJson(Map<String, dynamic> json) =>
      _$MotorInsuranceDocumentDetailFromJson(json);
}

@freezed
class NonMotorInsuranceDocumentDetail with _$NonMotorInsuranceDocumentDetail {
  const factory NonMotorInsuranceDocumentDetail({
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
    @JsonKey(name: "nonMotorInsuranceDoumentDetailId") int? nonMotorInsuranceDoumentDetailId,
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
    @JsonKey(name: "nonMotorInsuranceDocumentTypeId") int? nonMotorInsuranceDocumentTypeId,
    @JsonKey(name: "nonMotorDocImagePath") String? nonMotorDocImagePath,
  }) = _NonMotorInsuranceDocumentDetail;

  factory NonMotorInsuranceDocumentDetail.fromJson(Map<String, dynamic> json) =>
      _$NonMotorInsuranceDocumentDetailFromJson(json);
}

@freezed
class PolicyDocumentDetail with _$PolicyDocumentDetail {
  const factory PolicyDocumentDetail({
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
    @JsonKey(name: "policyDoumentDetailId") int? policyDoumentDetailId,
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
    @JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
    @JsonKey(name: "policyDouImagePath") String? policyDouImagePath,
  }) = _PolicyDocumentDetail;

  factory PolicyDocumentDetail.fromJson(Map<String, dynamic> json) => _$PolicyDocumentDetailFromJson(json);
}

@freezed
class PorDocumentDetail with _$PorDocumentDetail {
  const factory PorDocumentDetail({
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
    @JsonKey(name: "porDocumentDetailId") int? porDocumentDetailId,
    @JsonKey(name: "porDocumentTypeId") int? porDocumentTypeId,
    @JsonKey(name: "agentApplicationId") int? agentApplicationId,
    @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
    @JsonKey(name: "lastName") String? lastName,
    @JsonKey(name: "issueDate") DateTime? issueDate,
    @JsonKey(name: "porDocImagePath") String? porDocImagePath,
  }) = _PorDocumentDetail;

  factory PorDocumentDetail.fromJson(Map<String, dynamic> json) => _$PorDocumentDetailFromJson(json);
}
