// To parse this JSON data, do
//
//     final resendOtpResponseModel = resendOtpResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:ekyc/models/token_data/token_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_response_model.freezed.dart';
part 'resend_otp_response_model.g.dart';

ResendOtpResponseModel resendOtpResponseModelFromJson(String str) => ResendOtpResponseModel.fromJson(json.decode(str));

String resendOtpResponseModelToJson(ResendOtpResponseModel data) => json.encode(data.toJson());

@freezed
class ResendOtpResponseModel with _$ResendOtpResponseModel {
  const factory ResendOtpResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") ResendOtpData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _ResendOtpResponseModel;

  factory ResendOtpResponseModel.fromJson(Map<String, dynamic> json) => _$ResendOtpResponseModelFromJson(json);
}

@freezed
class ResendOtpData with _$ResendOtpData {
  const factory ResendOtpData({
    @JsonKey(name: "rb") ResendOtpResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _ResendOtpData;

  factory ResendOtpData.fromJson(Map<String, dynamic> json) => _$ResendOtpDataFromJson(json);
}

@freezed
class ResendOtpResponseBody with _$ResendOtpResponseBody {
  const factory ResendOtpResponseBody({
    @JsonKey(name: "refCode") String? refCode,
    @JsonKey(name: "tokenData") TokenData? tokenData,
  }) = _ResendOtpResponseBody;

  factory ResendOtpResponseBody.fromJson(Map<String, dynamic> json) => _$ResendOtpResponseBodyFromJson(json);
}
