// To parse this JSON data, do
//
//     final logoutResponseModel = logoutResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response_model.freezed.dart';
part 'logout_response_model.g.dart';

LogoutResponseModel logoutResponseModelFromJson(String str) => LogoutResponseModel.fromJson(json.decode(str));

String logoutResponseModelToJson(LogoutResponseModel data) => json.encode(data.toJson());

@freezed
class LogoutResponseModel with _$LogoutResponseModel {
  const factory LogoutResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") LogoutData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _LogoutResponseModel;

  factory LogoutResponseModel.fromJson(Map<String, dynamic> json) => _$LogoutResponseModelFromJson(json);
}

@freezed
class LogoutData with _$LogoutData {
  const factory LogoutData({
    @JsonKey(name: "rb") LogoutResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _LogoutData;

  factory LogoutData.fromJson(Map<String, dynamic> json) => _$LogoutDataFromJson(json);
}

@freezed
class LogoutResponseBody with _$LogoutResponseBody {
  const factory LogoutResponseBody() = _LogoutResponseBody;

  factory LogoutResponseBody.fromJson(Map<String, dynamic> json) => _$LogoutResponseBodyFromJson(json);
}
