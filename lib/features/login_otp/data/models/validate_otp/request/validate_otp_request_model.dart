// To parse this JSON data, do
//
//     final validateOtpRequestModel = validateOtpRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_otp_request_model.freezed.dart';
part 'validate_otp_request_model.g.dart';

ValidateOtpRequestModel validateOtpRequestModelFromJson(String str) =>
    ValidateOtpRequestModel.fromJson(json.decode(str));

String validateOtpRequestModelToJson(ValidateOtpRequestModel data) => json.encode(data.toJson());

@freezed
class ValidateOtpRequestModel with _$ValidateOtpRequestModel {
  const factory ValidateOtpRequestModel({
    @JsonKey(name: "preValidationModel") PreValidationModel? preValidationModel,
    @JsonKey(name: "mobileNumber") String? mobileNumber,
  }) = _ValidateOtpRequestModel;

  factory ValidateOtpRequestModel.fromJson(Map<String, dynamic> json) => _$ValidateOtpRequestModelFromJson(json);
}

@freezed
class PreValidationModel with _$PreValidationModel {
  const factory PreValidationModel({
    @JsonKey(name: "validationType") String? validationType,
    @JsonKey(name: "refCode") String? refCode,
    @JsonKey(name: "otpNumber") String? otpNumber,
    @JsonKey(name: "key") String? key,
  }) = _PreValidationModel;

  factory PreValidationModel.fromJson(Map<String, dynamic> json) => _$PreValidationModelFromJson(json);
}
