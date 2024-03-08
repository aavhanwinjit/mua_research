// To parse this JSON data, do
//
//     final verifyMPINResponseModel = verifyMPINResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:ekyc/models/token_data/token_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_mpin_response_model.freezed.dart';
part 'verify_mpin_response_model.g.dart';

VerifyMPINResponseModel verifyMPINResponseModelFromJson(String str) =>
    VerifyMPINResponseModel.fromJson(json.decode(str));

String verifyMPINResponseModelToJson(VerifyMPINResponseModel data) =>
    json.encode(data.toJson());

@freezed
class VerifyMPINResponseModel with _$VerifyMPINResponseModel {
  const factory VerifyMPINResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") VerifyMPINData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _VerifyMPINResponseModel;

  factory VerifyMPINResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyMPINResponseModelFromJson(json);
}

@freezed
class VerifyMPINData with _$VerifyMPINData {
  const factory VerifyMPINData({
    @JsonKey(name: "rb") VerifyMPINResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _VerifyMPINData;

  factory VerifyMPINData.fromJson(Map<String, dynamic> json) =>
      _$VerifyMPINDataFromJson(json);
}

@freezed
class VerifyMPINResponseBody with _$VerifyMPINResponseBody {
  const factory VerifyMPINResponseBody({
    @JsonKey(name: "refCode") String? refCode,
    @JsonKey(name: "tokenData") TokenData? tokenData,
  }) = _VerifyMPINResponseBody;

  factory VerifyMPINResponseBody.fromJson(Map<String, dynamic> json) =>
      _$VerifyMPINResponseBodyFromJson(json);
}
