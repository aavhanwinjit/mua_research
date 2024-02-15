// To parse this JSON data, do
//
//     final loginbyMpinRequestModel = loginbyMpinRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_by_mpin_request_model.freezed.dart';
part 'login_by_mpin_request_model.g.dart';

LoginbyMpinRequestModel loginbyMpinRequestModelFromJson(String str) =>
    LoginbyMpinRequestModel.fromJson(json.decode(str));

String loginbyMpinRequestModelToJson(LoginbyMpinRequestModel data) => json.encode(data.toJson());

@freezed
class LoginbyMpinRequestModel with _$LoginbyMpinRequestModel {
  const factory LoginbyMpinRequestModel({
    @JsonKey(name: "deviceId") String? deviceId,
    @JsonKey(name: "deviceToken") String? deviceToken,
    @JsonKey(name: "mPIN") String? mPin,
  }) = _LoginbyMpinRequestModel;

  factory LoginbyMpinRequestModel.fromJson(Map<String, dynamic> json) => _$LoginbyMpinRequestModelFromJson(json);
}
