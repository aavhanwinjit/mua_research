// To parse this JSON data, do
//
//     final responseModel = responseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

ResponseModel responseModelFromJson(String str) => ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

@freezed
class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") dynamic body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) => _$ResponseModelFromJson(json);
}

@freezed
class StatusModel with _$StatusModel {
  const factory StatusModel({
    @JsonKey(name: "isSuccess") bool? isSuccess,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "statusCode") String? statusCode,
  }) = _StatusModel;

  factory StatusModel.fromJson(Map<String, dynamic> json) => _$StatusModelFromJson(json);
}
