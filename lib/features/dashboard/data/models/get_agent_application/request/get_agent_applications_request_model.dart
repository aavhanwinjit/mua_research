// To parse this JSON data, do
//
//     final getAgentApplicationsRequestModel = getAgentApplicationsRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_agent_applications_request_model.freezed.dart';
part 'get_agent_applications_request_model.g.dart';

GetAgentApplicationsRequestModel getAgentApplicationsRequestModelFromJson(String str) =>
    GetAgentApplicationsRequestModel.fromJson(json.decode(str));

String getAgentApplicationsRequestModelToJson(GetAgentApplicationsRequestModel data) => json.encode(data.toJson());

@freezed
class GetAgentApplicationsRequestModel with _$GetAgentApplicationsRequestModel {
  const factory GetAgentApplicationsRequestModel({
    @JsonKey(name: "agentId") int? agentId,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "rowsPerPage") int? rowsPerPage,
    @JsonKey(name: "pageNo") int? pageNo,
  }) = _GetAgentApplicationsRequestModel;

  factory GetAgentApplicationsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GetAgentApplicationsRequestModelFromJson(json);
}
