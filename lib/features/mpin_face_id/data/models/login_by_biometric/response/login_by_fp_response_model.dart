// To parse this JSON data, do
//
//     final loginByFpResponseModel = loginByFpResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/agent_login_details/agent_login_details_response_model.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_by_fp_response_model.freezed.dart';
part 'login_by_fp_response_model.g.dart';

LoginByFpResponseModel loginByFpResponseModelFromJson(String str) => LoginByFpResponseModel.fromJson(json.decode(str));

String loginByFpResponseModelToJson(LoginByFpResponseModel data) => json.encode(data.toJson());

@freezed
class LoginByFpResponseModel with _$LoginByFpResponseModel {
  const factory LoginByFpResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") LoginByFPData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _LoginByFpResponseModel;

  factory LoginByFpResponseModel.fromJson(Map<String, dynamic> json) => _$LoginByFpResponseModelFromJson(json);
}

@freezed
class LoginByFPData with _$LoginByFPData {
  const factory LoginByFPData({
    @JsonKey(name: "rb") AgentLoginDetailsResponseModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _LoginByFPData;

  factory LoginByFPData.fromJson(Map<String, dynamic> json) => _$LoginByFPDataFromJson(json);
}
