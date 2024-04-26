// To parse this JSON data, do
//
//     final getAgentDetailsResponseModel = getAgentDetailsResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_agent_details_response_model.freezed.dart';
part 'get_agent_details_response_model.g.dart';

GetAgentDetailsResponseModel getAgentDetailsResponseModelFromJson(String str) =>
    GetAgentDetailsResponseModel.fromJson(json.decode(str));

String getAgentDetailsResponseModelToJson(GetAgentDetailsResponseModel data) => json.encode(data.toJson());

@freezed
class GetAgentDetailsResponseModel with _$GetAgentDetailsResponseModel {
  const factory GetAgentDetailsResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") GetAgentDetailsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetAgentDetailsResponseModel;

  factory GetAgentDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAgentDetailsResponseModelFromJson(json);
}

@freezed
class GetAgentDetailsData with _$GetAgentDetailsData {
  const factory GetAgentDetailsData({
    @JsonKey(name: "rb") GetAgentDetailsResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GetAgentDetailsData;

  factory GetAgentDetailsData.fromJson(Map<String, dynamic> json) => _$GetAgentDetailsDataFromJson(json);
}

@freezed
class GetAgentDetailsResponseBody with _$GetAgentDetailsResponseBody {
  const factory GetAgentDetailsResponseBody({
    @JsonKey(name: "agentId") int? agentId,
    @JsonKey(name: "agentName") String? agentName,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "companyIds") String? companyIds,
    @JsonKey(name: "signaturePath") String? signaturePath,
    @JsonKey(name: "mpin") String? mpin,
    @JsonKey(name: "mobileNumber") String? mobileNumber,
    @JsonKey(name: "isApproved") dynamic isApproved,
    @JsonKey(name: "remark") dynamic remark,
    @JsonKey(name: "dateOfApproved") dynamic dateOfApproved,
    @JsonKey(name: "approvedBy") dynamic approvedBy,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "countryId") dynamic countryId,
    @JsonKey(name: "emailId") String? emailId,
    @JsonKey(name: "authorized") dynamic authorized,
    @JsonKey(name: "isMPINExpired") dynamic isMpinExpired,
    @JsonKey(name: "mpinExpiry") DateTime? mpinExpiry,
    @JsonKey(name: "profileImagePath") dynamic profileImagePath,
    @JsonKey(name: "birthDate") dynamic birthDate,
    @JsonKey(name: "status") dynamic status,
    @JsonKey(name: "reviewByUser") dynamic reviewByUser,
    @JsonKey(name: "apiUniqueKey") dynamic apiUniqueKey,
    @JsonKey(name: "companies") List<Company>? companies,
    @JsonKey(name: "agencyName") String? agencyName,
    @JsonKey(name: "signatureUploadDate") DateTime? signatureUploadDate,
    @JsonKey(name: "designation") dynamic designation,
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") dynamic crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
  }) = _GetAgentDetailsResponseBody;

  factory GetAgentDetailsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetAgentDetailsResponseBodyFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: "companyId") int? companyId,
    @JsonKey(name: "companyName") String? companyName,
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}
