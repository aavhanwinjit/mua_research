// To parse this JSON data, do
//
//     final saveSignatureRequestModel = saveSignatureRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_signature_request_model.freezed.dart';
part 'save_signature_request_model.g.dart';

SaveSignatureRequestModel saveSignatureRequestModelFromJson(String str) =>
    SaveSignatureRequestModel.fromJson(json.decode(str));

String saveSignatureRequestModelToJson(SaveSignatureRequestModel data) => json.encode(data.toJson());

@freezed
class SaveSignatureRequestModel with _$SaveSignatureRequestModel {
  const factory SaveSignatureRequestModel({
    @JsonKey(name: "fileName") String? fileName,
    @JsonKey(name: "fileString") String? fileString,
    @JsonKey(name: "allowedFileId") int? allowedFileId,
  }) = _SaveSignatureRequestModel;

  factory SaveSignatureRequestModel.fromJson(Map<String, dynamic> json) => _$SaveSignatureRequestModelFromJson(json);
}
