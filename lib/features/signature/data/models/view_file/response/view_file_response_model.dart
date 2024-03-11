// To parse this JSON data, do
//
//     final viewFileResponseModel = viewFileResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_file_response_model.freezed.dart';
part 'view_file_response_model.g.dart';

ViewFileResponseModel viewFileResponseModelFromJson(String str) => ViewFileResponseModel.fromJson(json.decode(str));

String viewFileResponseModelToJson(ViewFileResponseModel data) => json.encode(data.toJson());

@freezed
class ViewFileResponseModel with _$ViewFileResponseModel {
  const factory ViewFileResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") ViewFileData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _ViewFileResponseModel;

  factory ViewFileResponseModel.fromJson(Map<String, dynamic> json) => _$ViewFileResponseModelFromJson(json);
}

@freezed
class ViewFileData with _$ViewFileData {
  const factory ViewFileData({
    @JsonKey(name: "rb") String? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _ViewFileData;

  factory ViewFileData.fromJson(Map<String, dynamic> json) => _$ViewFileDataFromJson(json);
}
