// To parse this JSON data, do
//
//     final getAgentApplicationsResponseModel = getAgentApplicationsResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_agent_applications_response_model.freezed.dart';
part 'get_agent_applications_response_model.g.dart';

GetAgentApplicationsResponseModel getAgentApplicationsResponseModelFromJson(String str) =>
    GetAgentApplicationsResponseModel.fromJson(json.decode(str));

String getAgentApplicationsResponseModelToJson(GetAgentApplicationsResponseModel data) => json.encode(data.toJson());

@freezed
class GetAgentApplicationsResponseModel with _$GetAgentApplicationsResponseModel {
  const factory GetAgentApplicationsResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") GetAgentApplicationsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetAgentApplicationsResponseModel;

  factory GetAgentApplicationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAgentApplicationsResponseModelFromJson(json);
}

@freezed
class GetAgentApplicationsData with _$GetAgentApplicationsData {
  const factory GetAgentApplicationsData({
    @JsonKey(name: "rb") GetAgentApplicationsResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GetAgentApplicationsData;

  factory GetAgentApplicationsData.fromJson(Map<String, dynamic> json) => _$GetAgentApplicationsDataFromJson(json);
}

@freezed
class GetAgentApplicationsResponseBody with _$GetAgentApplicationsResponseBody {
  const factory GetAgentApplicationsResponseBody({
    @JsonKey(name: "agentApplicationList") List<AgentApplicationsModel>? agentApplicationList,
  }) = _GetAgentApplicationsResponseBody;

  factory GetAgentApplicationsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetAgentApplicationsResponseBodyFromJson(json);
}

@freezed
class AgentApplicationsModel with _$AgentApplicationsModel {
  const factory AgentApplicationsModel({
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
    @JsonKey(name: "idDocFirstName") String? idDocFirstName,
    @JsonKey(name: "idDocOtherName") String? idDocOtherName,
    @JsonKey(name: "idDocNICNumber") String? idDocNicNumber,
    @JsonKey(name: "idDocPolicyNumber") String? idDocPolicyNumber,
    @JsonKey(name: "isIDVerificationCompleted") bool? isIdVerificationCompleted,
    @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
    @JsonKey(name: "addressDocImagePath") String? addressDocImagePath,
    @JsonKey(name: "addressDocSurname") String? addressDocSurname,
    @JsonKey(name: "addressDocOtherName") String? addressDocOtherName,
    @JsonKey(name: "addressDocBillDate") String? addressDocBillDate,
    @JsonKey(name: "addressDocAddress") String? addressDocAddress,
    @JsonKey(name: "isAddressVerificationCompleted") bool? isAddressVerificationCompleted,
    @JsonKey(name: "porRequired") bool? porRequired,
    @JsonKey(name: "insuredDocumentTypeId1") int? insuredDocumentTypeId1,
    @JsonKey(name: "insuredDocumentTypeId2") int? insuredDocumentTypeId2,
    @JsonKey(name: "insuredDocumentTypeId3") int? insuredDocumentTypeId3,
    @JsonKey(name: "insuredDocLastName") String? insuredDocLastName,
    @JsonKey(name: "insureDocIssueDate") String? insureDocIssueDate,
    @JsonKey(name: "insuredDocImagePath1") String? insuredDocImagePath1,
    @JsonKey(name: "insuredDocImagePath2") String? insuredDocImagePath2,
    @JsonKey(name: "insuredDocImagePath3") String? insuredDocImagePath3,
    @JsonKey(name: "isPORDocVerificationCompleted") bool? isPorDocVerificationCompleted,
    @JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
    @JsonKey(name: "policyDocImagePath") String? policyDocImagePath,
    @JsonKey(name: "isPolicyDocVerificationCompleted") bool? isPolicyDocVerificationCompleted,
    @JsonKey(name: "additionalDocumentTypeId") int? additionalDocumentTypeId,
    @JsonKey(name: "additionalDocImagePath") String? additionalDocImagePath,
    @JsonKey(name: "isAdditionalDocVerificationCompleted") bool? isAdditionalDocVerificationCompleted,
  }) = _AgentApplicationsModel;

  factory AgentApplicationsModel.fromJson(Map<String, dynamic> json) => _$AgentApplicationsModelFromJson(json);
}
