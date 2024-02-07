// To parse this JSON data, do
//
//     final validateOtpResponseModel = validateOtpResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_otp_response_model.freezed.dart';
part 'validate_otp_response_model.g.dart';

ValidateOtpResponseModel validateOtpResponseModelFromJson(String str) =>
    ValidateOtpResponseModel.fromJson(json.decode(str));

String validateOtpResponseModelToJson(ValidateOtpResponseModel data) => json.encode(data.toJson());

@freezed
class ValidateOtpResponseModel with _$ValidateOtpResponseModel {
  const factory ValidateOtpResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") ValidateOTPData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _ValidateOtpResponseModel;

  factory ValidateOtpResponseModel.fromJson(Map<String, dynamic> json) => _$ValidateOtpResponseModelFromJson(json);
}

@freezed
class ValidateOTPData with _$ValidateOTPData {
  const factory ValidateOTPData({
    @JsonKey(name: "rb") ValidateOTPResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _ValidateOTPData;

  factory ValidateOTPData.fromJson(Map<String, dynamic> json) => _$ValidateOTPDataFromJson(json);
}

@freezed
class ValidateOTPResponseBody with _$ValidateOTPResponseBody {
  const factory ValidateOTPResponseBody({
    @JsonKey(name: "agentName") String? agentName,
    @JsonKey(name: "mobileNumber") String? mobileNumber,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "companyName") String? companyName,
    @JsonKey(name: "emailId") String? emailId,
    @JsonKey(name: "designation") String? designation,
    @JsonKey(name: "agencyName") String? agencyName,
  }) = _ValidateOTPResponseBody;

  factory ValidateOTPResponseBody.fromJson(Map<String, dynamic> json) => _$ValidateOTPResponseBodyFromJson(json);
}


// // To parse this JSON data, do
// //
// //     final validateOtpResponseModel = validateOtpResponseModelFromJson(jsonString);

// import 'dart:convert';

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'validate_otp_response_model.freezed.dart';
// part 'validate_otp_response_model.g.dart';

// ValidateOtpResponseModel validateOtpResponseModelFromJson(String str) =>
//     ValidateOtpResponseModel.fromJson(json.decode(str));

// String validateOtpResponseModelToJson(ValidateOtpResponseModel data) => json.encode(data.toJson());

// @freezed
// class ValidateOtpResponseModel with _$ValidateOtpResponseModel {
//   const factory ValidateOtpResponseModel({
//     @JsonKey(name: "agentName") String? agentName,
//     @JsonKey(name: "mobileNumber") String? mobileNumber,
//     @JsonKey(name: "address") String? address,
//     @JsonKey(name: "companyName") String? companyName,
//     @JsonKey(name: "email") String? email,
//     @JsonKey(name: "designation") String? designation,
//     @JsonKey(name: "agencyName") String? agencyName,
//   }) = _ValidateOtpResponseModel;

//   factory ValidateOtpResponseModel.fromJson(Map<String, dynamic> json) => _$ValidateOtpResponseModelFromJson(json);
// }
