// To parse this JSON data, do
//
//     final loginbyMpinResponseModel = loginbyMpinResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/agent_login_details/agent_login_details_response_model.dart';
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
    @JsonKey(name: "rb") AgentLoginDetailsResponseModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _LoginByMpinData;

  factory LoginByMpinData.fromJson(Map<String, dynamic> json) => _$LoginByMpinDataFromJson(json);
}
