// To parse this JSON data, do
//
//     final generatePdfRequestModel = generatePdfRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_pdf_request_model.freezed.dart';
part 'generate_pdf_request_model.g.dart';

GeneratePdfRequestModel generatePdfRequestModelFromJson(String str) =>
    GeneratePdfRequestModel.fromJson(json.decode(str));

String generatePdfRequestModelToJson(GeneratePdfRequestModel data) => json.encode(data.toJson());

@freezed
class GeneratePdfRequestModel with _$GeneratePdfRequestModel {
  const factory GeneratePdfRequestModel({
    @JsonKey(name: "id") int? id,
  }) = _GeneratePdfRequestModel;

  factory GeneratePdfRequestModel.fromJson(Map<String, dynamic> json) => _$GeneratePdfRequestModelFromJson(json);
}
