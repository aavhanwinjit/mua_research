// To parse this JSON data, do
//
//     final changeMPINRequestModel = changeMPINRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_mpin_request_model.freezed.dart';
part 'change_mpin_request_model.g.dart';

ChangeMPINRequestModel changeMPINRequestModelFromJson(String str) =>
    ChangeMPINRequestModel.fromJson(json.decode(str));

String changeMPINRequestModelToJson(ChangeMPINRequestModel data) =>
    json.encode(data.toJson());

@freezed
class ChangeMPINRequestModel with _$ChangeMPINRequestModel {
  const factory ChangeMPINRequestModel({
    @JsonKey(name: "mPIN") required MPIN mPIN,
    @JsonKey(name: "otp") required OTP otp,
  }) = _ChangeMPINRequestModel;

  factory ChangeMPINRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeMPINRequestModelFromJson(json);
}

@freezed
class MPIN with _$MPIN {
  const factory MPIN({
    @JsonKey(name: "oldMPIN") required String oldMPIN,
    @JsonKey(name: "newMPIN") required String newMPIN,
    @JsonKey(name: "confirmNewMPIN") required String confirmNewMPIN,
  }) = _MPIN;

  factory MPIN.fromJson(Map<String, dynamic> json) => _$MPINFromJson(json);
}

@freezed
class OTP with _$OTP {
  const factory OTP({
    @JsonKey(name: "refCode") required String refCode,
    @JsonKey(name: "otpNumber") required String otpNumber,
  }) = _OTP;

  factory OTP.fromJson(Map<String, dynamic> json) => _$OTPFromJson(json);
}
