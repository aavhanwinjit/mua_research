// To parse this JSON data, do
//
//     final agentLoginDetailsResponseModel = agentLoginDetailsResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/token_data/token_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_login_details_response_model.freezed.dart';
part 'agent_login_details_response_model.g.dart';

AgentLoginDetailsResponseModel agentLoginDetailsResponseModelFromJson(String str) =>
    AgentLoginDetailsResponseModel.fromJson(json.decode(str));

String agentLoginDetailsResponseModelToJson(AgentLoginDetailsResponseModel data) => json.encode(data.toJson());

@freezed
class AgentLoginDetailsResponseModel with _$AgentLoginDetailsResponseModel {
  const factory AgentLoginDetailsResponseModel({
    @JsonKey(name: "agentId") int? agentId,
    @JsonKey(name: "agentName") String? agentName,
    @JsonKey(name: "mobileNumber") String? mobileNumber,
    @JsonKey(name: "emailId") String? emailId,
    @JsonKey(name: "authToken") TokenData? authToken,
    @JsonKey(name: "isMPINExpired") bool? isMpinExpired,
    @JsonKey(name: "isFirstLogin") bool? isFirstLogin,
    @JsonKey(name: "deviceToken") String? deviceToken,
    @JsonKey(name: "fpDeviceToken") String? fpDeviceToken,
    @JsonKey(name: "profileImagePath") String? profileImagePath,
    @JsonKey(name: "referralCode") String? referralCode,
    @JsonKey(name: "isBirthday") bool? isBirthday,
    @JsonKey(name: "agentAuthStatus") String? agentAuthStatus,
    @JsonKey(name: "kycType") String? kycType,
    @JsonKey(name: "kycStatus") String? kycStatus,
    @JsonKey(name: "isFPLogin") bool? isFpLogin,
    @JsonKey(name: "authorized") bool? authorized,
    @JsonKey(name: "dailyLimit") int? dailyLimit,
  }) = _AgentLoginDetailsResponseModel;

  factory AgentLoginDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AgentLoginDetailsResponseModelFromJson(json);
}
