// To parse this JSON data, do
//
//     final saveFileResponseModel = saveFileResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_file_response_model.freezed.dart';
part 'save_file_response_model.g.dart';

SaveFileResponseModel saveFileResponseModelFromJson(String str) => SaveFileResponseModel.fromJson(json.decode(str));

String saveFileResponseModelToJson(SaveFileResponseModel data) => json.encode(data.toJson());

@freezed
class SaveFileResponseModel with _$SaveFileResponseModel {
  const factory SaveFileResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SaveFileData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SaveFileResponseModel;

  factory SaveFileResponseModel.fromJson(Map<String, dynamic> json) => _$SaveFileResponseModelFromJson(json);
}

@freezed
class SaveFileData with _$SaveFileData {
  const factory SaveFileData({
    @JsonKey(name: "rb") SaveFileResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SaveFileData;

  factory SaveFileData.fromJson(Map<String, dynamic> json) => _$SaveFileDataFromJson(json);
}

@freezed
class SaveFileResponseBody with _$SaveFileResponseBody {
  const factory SaveFileResponseBody({
    @JsonKey(name: "fileName") String? fileName,
  }) = _SaveFileResponseBody;

  factory SaveFileResponseBody.fromJson(Map<String, dynamic> json) => _$SaveFileResponseBodyFromJson(json);
}
