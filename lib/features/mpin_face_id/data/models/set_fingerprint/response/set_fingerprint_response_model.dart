// To parse this JSON data, do
//
//     final setFingerprintResponseModel = setFingerprintResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:ekyc/models/token_data/token_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_fingerprint_response_model.freezed.dart';
part 'set_fingerprint_response_model.g.dart';

SetFingerprintResponseModel setFingerprintResponseModelFromJson(String str) =>
    SetFingerprintResponseModel.fromJson(json.decode(str));

String setFingerprintResponseModelToJson(SetFingerprintResponseModel data) => json.encode(data.toJson());

@freezed
class SetFingerprintResponseModel with _$SetFingerprintResponseModel {
  const factory SetFingerprintResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SetFingerprintBody? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SetFingerprintResponseModel;

  factory SetFingerprintResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SetFingerprintResponseModelFromJson(json);
}

@freezed
class SetFingerprintBody with _$SetFingerprintBody {
  const factory SetFingerprintBody({
    @JsonKey(name: "rb") SetFingerprintResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SetFingerprintBody;

  factory SetFingerprintBody.fromJson(Map<String, dynamic> json) => _$SetFingerprintBodyFromJson(json);
}

@freezed
class SetFingerprintResponseBody with _$SetFingerprintResponseBody {
  const factory SetFingerprintResponseBody({
    @JsonKey(name: "data") SetFingerprintData? data,
    @JsonKey(name: "tokenData") TokenData? tokenData,
  }) = _SetFingerprintResponseBody;

  factory SetFingerprintResponseBody.fromJson(Map<String, dynamic> json) => _$SetFingerprintResponseBodyFromJson(json);
}

@freezed
class SetFingerprintData with _$SetFingerprintData {
  const factory SetFingerprintData({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataData? data,
  }) = _SetFingerprintData;

  factory SetFingerprintData.fromJson(Map<String, dynamic> json) => _$SetFingerprintDataFromJson(json);
}

@freezed
class DataData with _$DataData {
  const factory DataData({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "deviceToken") String? deviceToken,
  }) = _DataData;

  factory DataData.fromJson(Map<String, dynamic> json) => _$DataDataFromJson(json);
}
