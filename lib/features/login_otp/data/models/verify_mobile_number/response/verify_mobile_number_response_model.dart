// To parse this JSON data, do
//
//     final verifyMobileNumberResponseModel = verifyMobileNumberResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_mobile_number_response_model.freezed.dart';
part 'verify_mobile_number_response_model.g.dart';

VerifyMobileNumberResponseModel verifyMobileNumberResponseModelFromJson(String str) =>
    VerifyMobileNumberResponseModel.fromJson(json.decode(str));

String verifyMobileNumberResponseModelToJson(VerifyMobileNumberResponseModel data) => json.encode(data.toJson());

@freezed
class VerifyMobileNumberResponseModel with _$VerifyMobileNumberResponseModel {
  const factory VerifyMobileNumberResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") VerifyMobileNumberData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _VerifyMobileNumberResponseModel;

  factory VerifyMobileNumberResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyMobileNumberResponseModelFromJson(json);
}

@freezed
class VerifyMobileNumberData with _$VerifyMobileNumberData {
  const factory VerifyMobileNumberData({
    @JsonKey(name: "rb") VerifyMobileNumberResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _VerifyMobileNumberData;

  factory VerifyMobileNumberData.fromJson(Map<String, dynamic> json) => _$VerifyMobileNumberDataFromJson(json);
}

@freezed
class VerifyMobileNumberResponseBody with _$VerifyMobileNumberResponseBody {
  const factory VerifyMobileNumberResponseBody({
    @JsonKey(name: "refCode") String? refCode,
    @JsonKey(name: "tokenData") TokenData? tokenData,
  }) = _VerifyMobileNumberResponseBody;

  factory VerifyMobileNumberResponseBody.fromJson(Map<String, dynamic> json) =>
      _$VerifyMobileNumberResponseBodyFromJson(json);
}

@freezed
class TokenData with _$TokenData {
  const factory TokenData({
    @JsonKey(name: "token") String? token,
    @JsonKey(name: "sessionId") String? sessionId,
    @JsonKey(name: "expiry") int? expiry,
  }) = _TokenData;

  factory TokenData.fromJson(Map<String, dynamic> json) => _$TokenDataFromJson(json);
}
