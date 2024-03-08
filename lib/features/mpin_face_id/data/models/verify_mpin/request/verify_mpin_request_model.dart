// To parse this JSON data, do
//
//     final verifyMPINRequestModel = verifyMPINRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_mpin_request_model.freezed.dart';
part 'verify_mpin_request_model.g.dart';

VerifyMPINRequestModel verifyMPINRequestModelFromJson(String str) =>
    VerifyMPINRequestModel.fromJson(json.decode(str));

String verifyMPINRequestModelToJson(VerifyMPINRequestModel data) =>
    json.encode(data.toJson());

@freezed
class VerifyMPINRequestModel with _$VerifyMPINRequestModel {
  const factory VerifyMPINRequestModel({
    @JsonKey(name: "isExistingCustomer") bool? isExistingCustomer,
    @JsonKey(name: "oldMPIN") String? oldMPIN,
    @JsonKey(name: "newMPIN") String? newMPIN,
    @JsonKey(name: "confirmNewMPIN") String? confirmNewMPIN,
  }) = _VerifyMPINRequestModel;

  factory VerifyMPINRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyMPINRequestModelFromJson(json);
}
