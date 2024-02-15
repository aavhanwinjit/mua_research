// To parse this JSON data, do
//
//     final loginbyMpinResponseModel = loginbyMpinResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_by_mpin_response_model.freezed.dart';
part 'login_by_mpin_response_model.g.dart';

LoginbyMpinResponseModel loginbyMpinResponseModelFromJson(String str) =>
    LoginbyMpinResponseModel.fromJson(json.decode(str));

String loginbyMpinResponseModelToJson(LoginbyMpinResponseModel data) => json.encode(data.toJson());

@freezed
class LoginbyMpinResponseModel with _$LoginbyMpinResponseModel {
  const factory LoginbyMpinResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") LoginByMpinData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _LoginbyMpinResponseModel;

  factory LoginbyMpinResponseModel.fromJson(Map<String, dynamic> json) => _$LoginbyMpinResponseModelFromJson(json);
}

@freezed
class LoginByMpinData with _$LoginByMpinData {
  const factory LoginByMpinData({
    @JsonKey(name: "rb") LoginByMpinResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _LoginByMpinData;

  factory LoginByMpinData.fromJson(Map<String, dynamic> json) => _$LoginByMpinDataFromJson(json);
}

@freezed
class LoginByMpinResponseBody with _$LoginByMpinResponseBody {
  const factory LoginByMpinResponseBody({
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
    @JsonKey(name: "agentAuthStatus") String? agentAuthStatus,
    @JsonKey(name: "kycType") String? kycType,
    @JsonKey(name: "kycStatus") String? kycStatus,
    @JsonKey(name: "isFPLogin") bool? isFpLogin,
    @JsonKey(name: "authorized") bool? authorized,
    @JsonKey(name: "dailyLimit") int? dailyLimit,
  }) = _LoginByMpinResponseBody;

  factory LoginByMpinResponseBody.fromJson(Map<String, dynamic> json) => _$LoginByMpinResponseBodyFromJson(json);
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
