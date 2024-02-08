// To parse this JSON data, do
//
//     final saveFileRequestModel = saveFileRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_file_request_model.freezed.dart';
part 'save_file_request_model.g.dart';

SaveFileRequestModel saveFileRequestModelFromJson(String str) => SaveFileRequestModel.fromJson(json.decode(str));

String saveFileRequestModelToJson(SaveFileRequestModel data) => json.encode(data.toJson());

@freezed
class SaveFileRequestModel with _$SaveFileRequestModel {
  const factory SaveFileRequestModel({
    @JsonKey(name: "fileName") String? fileName,
    @JsonKey(name: "fileString") String? fileString,
    @JsonKey(name: "allowedFileId") int? allowedFileId,
  }) = _SaveFileRequestModel;

  factory SaveFileRequestModel.fromJson(Map<String, dynamic> json) => _$SaveFileRequestModelFromJson(json);
}
