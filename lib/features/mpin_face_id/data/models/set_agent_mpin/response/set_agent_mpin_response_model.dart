// To parse this JSON data, do
//
//     final setAgentMpinResponseModel = setAgentMpinResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_agent_mpin_response_model.freezed.dart';
part 'set_agent_mpin_response_model.g.dart';

SetAgentMpinResponseModel setAgentMpinResponseModelFromJson(String str) =>
    SetAgentMpinResponseModel.fromJson(json.decode(str));

String setAgentMpinResponseModelToJson(SetAgentMpinResponseModel data) => json.encode(data.toJson());

@freezed
class SetAgentMpinResponseModel with _$SetAgentMpinResponseModel {
  const factory SetAgentMpinResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SetAgentMpinData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SetAgentMpinResponseModel;

  factory SetAgentMpinResponseModel.fromJson(Map<String, dynamic> json) => _$SetAgentMpinResponseModelFromJson(json);
}

@freezed
class SetAgentMpinData with _$SetAgentMpinData {
  const factory SetAgentMpinData({
    @JsonKey(name: "rb") ResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SetAgentMpinData;

  factory SetAgentMpinData.fromJson(Map<String, dynamic> json) => _$SetAgentMpinDataFromJson(json);
}

@freezed
class ResponseBody with _$ResponseBody {
  const factory ResponseBody({
    @JsonKey(name: "agentId") int? agentId,
    @JsonKey(name: "agentName") String? agentName,
    @JsonKey(name: "mobileNumber") String? mobileNumber,
    @JsonKey(name: "emailId") String? emailId,
    @JsonKey(name: "authToken") AuthToken? authToken,
    @JsonKey(name: "isMPINExpired") bool? isMpinExpired,
    @JsonKey(name: "isFirstLogin") bool? isFirstLogin,
    @JsonKey(name: "deviceToken") String? deviceToken,
    @JsonKey(name: "fpDeviceToken") String? fpDeviceToken,
    @JsonKey(name: "profileImagePath") String? profileImagePath,
    @JsonKey(name: "referralCode") String? referralCode,
    @JsonKey(name: "isBirthday") bool? isBirthday,
    @JsonKey(name: "agentAuthStatus") dynamic agentAuthStatus,
    @JsonKey(name: "kycType") dynamic kycType,
    @JsonKey(name: "kycStatus") dynamic kycStatus,
    @JsonKey(name: "isFPLogin") bool? isFpLogin,
    @JsonKey(name: "authorized") dynamic authorized,
    @JsonKey(name: "dailyLimit") dynamic dailyLimit,
  }) = _ResponseBody;

  factory ResponseBody.fromJson(Map<String, dynamic> json) => _$ResponseBodyFromJson(json);
}

@freezed
class AuthToken with _$AuthToken {
  const factory AuthToken({
    @JsonKey(name: "token") String? token,
    @JsonKey(name: "sessionId") String? sessionId,
    @JsonKey(name: "expiry") int? expiry,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, dynamic> json) => _$AuthTokenFromJson(json);
}
