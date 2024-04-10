// To parse this JSON data, do
//
//     final saveIdentityDetailsResponseModel = saveIdentityDetailsResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_identity_details_response_model.freezed.dart';
part 'save_identity_details_response_model.g.dart';

SaveIdentityDetailsResponseModel saveIdentityDetailsResponseModelFromJson(String str) =>
    SaveIdentityDetailsResponseModel.fromJson(json.decode(str));

String saveIdentityDetailsResponseModelToJson(SaveIdentityDetailsResponseModel data) => json.encode(data.toJson());

@freezed
class SaveIdentityDetailsResponseModel with _$SaveIdentityDetailsResponseModel {
  const factory SaveIdentityDetailsResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SaveIdentityDetailsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SaveIdentityDetailsResponseModel;

  factory SaveIdentityDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SaveIdentityDetailsResponseModelFromJson(json);
}

@freezed
class SaveIdentityDetailsData with _$SaveIdentityDetailsData {
  const factory SaveIdentityDetailsData({
    @JsonKey(name: "rb") AgentApplicationModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SaveIdentityDetailsData;

  factory SaveIdentityDetailsData.fromJson(Map<String, dynamic> json) => _$SaveIdentityDetailsDataFromJson(json);
}
