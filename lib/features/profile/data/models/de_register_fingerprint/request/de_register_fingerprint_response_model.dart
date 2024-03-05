// To parse this JSON data, do
//
//     final deRegisterFingerprintResponseModel = deRegisterFingerprintResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'de_register_fingerprint_response_model.freezed.dart';
part 'de_register_fingerprint_response_model.g.dart';

DeRegisterFingerprintResponseModel deRegisterFingerprintResponseModelFromJson(String str) =>
    DeRegisterFingerprintResponseModel.fromJson(json.decode(str));

String deRegisterFingerprintResponseModelToJson(DeRegisterFingerprintResponseModel data) => json.encode(data.toJson());

@freezed
class DeRegisterFingerprintResponseModel with _$DeRegisterFingerprintResponseModel {
  const factory DeRegisterFingerprintResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") DeRegisterFingerPrintData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _DeRegisterFingerprintResponseModel;

  factory DeRegisterFingerprintResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeRegisterFingerprintResponseModelFromJson(json);
}

@freezed
class DeRegisterFingerPrintData with _$DeRegisterFingerPrintData {
  const factory DeRegisterFingerPrintData({
    @JsonKey(name: "rb") DeRegisterFingerprintResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _DeRegisterFingerPrintData;

  factory DeRegisterFingerPrintData.fromJson(Map<String, dynamic> json) => _$DeRegisterFingerPrintDataFromJson(json);
}

@freezed
class DeRegisterFingerprintResponseBody with _$DeRegisterFingerprintResponseBody {
  const factory DeRegisterFingerprintResponseBody({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") dynamic data,
  }) = _DeRegisterFingerprintResponseBody;

  factory DeRegisterFingerprintResponseBody.fromJson(Map<String, dynamic> json) =>
      _$DeRegisterFingerprintResponseBodyFromJson(json);
}
