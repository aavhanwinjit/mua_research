// To parse this JSON data, do
//
//     final saveFileResponseModel = saveFileResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_file_response_model.freezed.dart';
part 'save_file_response_model.g.dart';

SaveFileResponseModel saveFileResponseModelFromJson(String str) => SaveFileResponseModel.fromJson(json.decode(str));

String saveFileResponseModelToJson(SaveFileResponseModel data) => json.encode(data.toJson());

@freezed
class SaveFileResponseModel with _$SaveFileResponseModel {
  const factory SaveFileResponseModel({
    @JsonKey(name: "fileName") String? fileName,
  }) = _SaveFileResponseModel;

  factory SaveFileResponseModel.fromJson(Map<String, dynamic> json) => _$SaveFileResponseModelFromJson(json);
}
