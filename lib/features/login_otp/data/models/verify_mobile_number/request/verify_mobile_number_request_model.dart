// To parse this JSON data, do
//
//     final verifyMobileNumberRequestModel = verifyMobileNumberRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_mobile_number_request_model.freezed.dart';
part 'verify_mobile_number_request_model.g.dart';

VerifyMobileNumberRequestModel verifyMobileNumberRequestModelFromJson(String str) =>
    VerifyMobileNumberRequestModel.fromJson(json.decode(str));

String verifyMobileNumberRequestModelToJson(VerifyMobileNumberRequestModel data) => json.encode(data.toJson());

@freezed
class VerifyMobileNumberRequestModel with _$VerifyMobileNumberRequestModel {
  const factory VerifyMobileNumberRequestModel({
    @JsonKey(name: "mobileNumber") String? mobileNumber,
  }) = _VerifyMobileNumberRequestModel;

  factory VerifyMobileNumberRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyMobileNumberRequestModelFromJson(json);
}
