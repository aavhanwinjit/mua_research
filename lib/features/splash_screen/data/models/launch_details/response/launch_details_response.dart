// To parse this JSON data, do
//
//     final launchDetailsResponse = launchDetailsResponseFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:ekyc/models/token_data/token_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_details_response.freezed.dart';
part 'launch_details_response.g.dart';

LaunchDetailsResponse launchDetailsResponseFromJson(String str) => LaunchDetailsResponse.fromJson(json.decode(str));

String launchDetailsResponseToJson(LaunchDetailsResponse data) => json.encode(data.toJson());

@freezed
class LaunchDetailsResponse with _$LaunchDetailsResponse {
  const factory LaunchDetailsResponse({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") LaunchDetailsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _LaunchDetailsResponse;

  factory LaunchDetailsResponse.fromJson(Map<String, dynamic> json) => _$LaunchDetailsResponseFromJson(json);
}

@freezed
class LaunchDetailsData with _$LaunchDetailsData {
  const factory LaunchDetailsData({
    @JsonKey(name: "rb") LaunchDetailsResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _LaunchDetailsData;

  factory LaunchDetailsData.fromJson(Map<String, dynamic> json) => _$LaunchDetailsDataFromJson(json);
}

@freezed
class LaunchDetailsResponseBody with _$LaunchDetailsResponseBody {
  const factory LaunchDetailsResponseBody({
    @JsonKey(name: "appStart") AppStart? appStart,
    @JsonKey(name: "agentData") AgentData? agentData,
    @JsonKey(name: "appSettingsData") AppSettingsData? appSettingsData,
    @JsonKey(name: "languages") List<Language>? languages,
    @JsonKey(name: "tokenData") TokenData? tokenData,
    @JsonKey(name: "unreadPushMessageCount") int? unreadPushMessageCount,
  }) = _LaunchDetailsResponseBody;

  factory LaunchDetailsResponseBody.fromJson(Map<String, dynamic> json) => _$LaunchDetailsResponseBodyFromJson(json);
}

@freezed
class AgentData with _$AgentData {
  const factory AgentData({
    @JsonKey(name: "isValidDeviceToken") bool? isValidDeviceToken,
    @JsonKey(name: "isBlocked") bool? isBlocked,
    @JsonKey(name: "blockedTill") DateTime? blockedTill,
    @JsonKey(name: "loginData") LoginData? loginData,
    @JsonKey(name: "agentId") int? agentId,
  }) = _AgentData;

  factory AgentData.fromJson(Map<String, dynamic> json) => _$AgentDataFromJson(json);
}

@freezed
class LoginData with _$LoginData {
  const factory LoginData({
    @JsonKey(name: "isFPLogin") bool? isFpLogin,
    @JsonKey(name: "mobileNo") String? mobileNo,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "deviceToken") String? deviceToken,
    @JsonKey(name: "profileImagePath") String? profileImagePath,
    @JsonKey(name: "isMPINExpired") bool? isMpinExpired,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) => _$LoginDataFromJson(json);
}

@freezed
class AppSettingsData with _$AppSettingsData {
  const factory AppSettingsData({
    @JsonKey(name: "currentServerDate") String? currentServerDate,
    @JsonKey(name: "enableSSLPinning") bool? enableSslPinning,
    @JsonKey(name: "keys") String? keys,
    @JsonKey(name: "appShareLink") String? appShareLink,
    @JsonKey(name: "fcmToken") String? fcmToken,
    @JsonKey(name: "languageId") int? languageId,
    @JsonKey(name: "dmsLink") String? dmsLink,
    @JsonKey(name: "tempDMSLink") String? tempDmsLink,
    @JsonKey(name: "callUsNumber") String? callUsNumber,
    @JsonKey(name: "appDemoLink") String? appDemoLink,
    @JsonKey(name: "tncurl") String? tncurl,
  }) = _AppSettingsData;

  factory AppSettingsData.fromJson(Map<String, dynamic> json) => _$AppSettingsDataFromJson(json);
}

@freezed
class AppStart with _$AppStart {
  const factory AppStart({
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
    @JsonKey(name: "appStartId") int? appStartId,
    @JsonKey(name: "platform") String? platform,
    @JsonKey(name: "storeVersion") String? storeVersion,
    @JsonKey(name: "apiVer") String? apiVer,
    @JsonKey(name: "isForceUpdate") bool? isForceUpdate,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "releaseDate") DateTime? releaseDate,
    @JsonKey(name: "isActive") bool? isActive,
    @JsonKey(name: "channelId") String? channelId,
  }) = _AppStart;

  factory AppStart.fromJson(Map<String, dynamic> json) => _$AppStartFromJson(json);
}

@freezed
class Language with _$Language {
  const factory Language({
    @JsonKey(name: "languageId") int? languageId,
    @JsonKey(name: "languageCode") String? languageCode,
    @JsonKey(name: "languageName") String? languageName,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}
