// To parse this JSON data, do
//
//     final changeMPINResponseModel = changeMPINResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:ekyc/models/token_data/token_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_device_response_model.freezed.dart';
part 'register_device_response_model.g.dart';

RegisterDeviceResponseModel registerDeviceResponseModelFromJson(String str) =>
    RegisterDeviceResponseModel.fromJson(json.decode(str));

String registerDeviceResponseModelToJson(RegisterDeviceResponseModel data) =>
    json.encode(data.toJson());

@freezed
class RegisterDeviceResponseModel with _$RegisterDeviceResponseModel {
  const factory RegisterDeviceResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") RegisterDeviceData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _RegisterDeviceResponseModel;

  factory RegisterDeviceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDeviceResponseModelFromJson(json);
}

@freezed
class RegisterDeviceData with _$RegisterDeviceData {
  const factory RegisterDeviceData({
    @JsonKey(name: "rb") RegisterDeviceResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _RegisterDeviceData;

  factory RegisterDeviceData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDeviceDataFromJson(json);
}

@freezed
class RegisterDeviceResponseBody with _$RegisterDeviceResponseBody {
  const factory RegisterDeviceResponseBody({
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
    @JsonKey(name: "appDeviceId") int? appDeviceId,
    @JsonKey(name: "channelId") String? channelId,
    @JsonKey(name: "loginId") int? loginId,
    @JsonKey(name: "deviceId") String? deviceId,
    @JsonKey(name: "deviceToken") String? deviceToken,
    @JsonKey(name: "modelName") String? modelName,
    @JsonKey(name: "platform") String? platform,
    @JsonKey(name: "osVersion") String? osVersion,
    @JsonKey(name: "deregistered") bool? deregistered,
    @JsonKey(name: "inactive") bool? inactive,
    @JsonKey(name: "blockedTill") DateTime? blockedTill,
    @JsonKey(name: "wrongMPINAttempts") int? wrongMpinAttempts,
    @JsonKey(name: "isFPLogin") bool? isFpLogin,
    @JsonKey(name: "fingerPrintToken") String? fingerPrintToken,
    @JsonKey(name: "fpBlockedTill") DateTime? fpBlockedTill,
    @JsonKey(name: "wrongFPAttempts") int? wrongFpAttempts,
    @JsonKey(name: "lastLogin") DateTime? lastLogin,
  }) = _RegisterDeviceResponseBody;

  factory RegisterDeviceResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterDeviceResponseBodyFromJson(json);
}
