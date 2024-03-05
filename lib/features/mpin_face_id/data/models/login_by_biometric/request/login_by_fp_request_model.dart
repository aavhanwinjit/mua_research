// To parse this JSON data, do
//
//     final loginByFpRequestModel = loginByFpRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_by_fp_request_model.freezed.dart';
part 'login_by_fp_request_model.g.dart';

LoginByFpRequestModel loginByFpRequestModelFromJson(String str) => LoginByFpRequestModel.fromJson(json.decode(str));

String loginByFpRequestModelToJson(LoginByFpRequestModel data) => json.encode(data.toJson());

@freezed
class LoginByFpRequestModel with _$LoginByFpRequestModel {
  const factory LoginByFpRequestModel({
    @JsonKey(name: "deviceId") String? deviceId,
    @JsonKey(name: "deviceToken") String? deviceToken,
    @JsonKey(name: "fpDeviceToken") String? fpDeviceToken,
    @JsonKey(name: "biometricStatus") bool? biometricStatus,
    @JsonKey(name: "mobileNo") String? mobileNo,
  }) = _LoginByFpRequestModel;

  factory LoginByFpRequestModel.fromJson(Map<String, dynamic> json) => _$LoginByFpRequestModelFromJson(json);
}
