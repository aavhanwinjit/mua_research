// To parse this JSON data, do
//
//     final resendOtpRequestModel = resendOtpRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_request_model.freezed.dart';
part 'resend_otp_request_model.g.dart';

ResendOtpRequestModel resendOtpRequestModelFromJson(String str) => ResendOtpRequestModel.fromJson(json.decode(str));

String resendOtpRequestModelToJson(ResendOtpRequestModel data) => json.encode(data.toJson());

@freezed
class ResendOtpRequestModel with _$ResendOtpRequestModel {
  const factory ResendOtpRequestModel({
    @JsonKey(name: "refCode") String? refCode,
  }) = _ResendOtpRequestModel;

  factory ResendOtpRequestModel.fromJson(Map<String, dynamic> json) => _$ResendOtpRequestModelFromJson(json);
}
