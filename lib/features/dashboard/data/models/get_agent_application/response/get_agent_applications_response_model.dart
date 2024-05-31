// To parse this JSON data, do
//
//     final getAgentApplicationsResponseModel = getAgentApplicationsResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
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
    @JsonKey(name: "agentApplicationList") List<AgentApplicationModel>? agentApplicationList,
  }) = _GetAgentApplicationsResponseBody;

  factory GetAgentApplicationsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetAgentApplicationsResponseBodyFromJson(json);
}
