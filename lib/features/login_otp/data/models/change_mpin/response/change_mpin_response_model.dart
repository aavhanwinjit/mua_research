// To parse this JSON data, do
//
//     final changeMPINResponseModel = changeMPINResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:ekyc/models/token_data/token_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_mpin_response_model.freezed.dart';
part 'change_mpin_response_model.g.dart';

ChangeMPINResponseModel changeMPINResponseModelFromJson(String str) =>
    ChangeMPINResponseModel.fromJson(json.decode(str));

String changeMPINResponseModelToJson(ChangeMPINResponseModel data) =>
    json.encode(data.toJson());

@freezed
class ChangeMPINResponseModel with _$ChangeMPINResponseModel {
  const factory ChangeMPINResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") ChangeMPINData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _ChangeMPINResponseModel;

  factory ChangeMPINResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeMPINResponseModelFromJson(json);
}

@freezed
class ChangeMPINData with _$ChangeMPINData {
  const factory ChangeMPINData({
    @JsonKey(name: "rb") ChangeMPINResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _ChangeMPINData;

  factory ChangeMPINData.fromJson(Map<String, dynamic> json) =>
      _$ChangeMPINDataFromJson(json);
}

@freezed
class ChangeMPINResponseBody with _$ChangeMPINResponseBody {
  const factory ChangeMPINResponseBody({
    @JsonKey(name: "refCode") String? refCode,
    @JsonKey(name: "tokenData") TokenData? tokenData,
  }) = _ChangeMPINResponseBody;

  factory ChangeMPINResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeMPINResponseBodyFromJson(json);
}
