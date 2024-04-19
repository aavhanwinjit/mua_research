// To parse this JSON data, do
//
//     final generatePdfResponseModel = generatePdfResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_pdf_response_model.freezed.dart';
part 'generate_pdf_response_model.g.dart';

GeneratePdfResponseModel generatePdfResponseModelFromJson(String str) =>
    GeneratePdfResponseModel.fromJson(json.decode(str));

String generatePdfResponseModelToJson(GeneratePdfResponseModel data) => json.encode(data.toJson());

@freezed
class GeneratePdfResponseModel with _$GeneratePdfResponseModel {
  const factory GeneratePdfResponseModel({
    @JsonKey(name: "h") HeaderModel? headerModel,
    @JsonKey(name: "b") GeneratePdfData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GeneratePdfResponseModel;

  factory GeneratePdfResponseModel.fromJson(Map<String, dynamic> json) => _$GeneratePdfResponseModelFromJson(json);
}

@freezed
class GeneratePdfData with _$GeneratePdfData {
  const factory GeneratePdfData({
    @JsonKey(name: "rb") String? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GeneratePdfData;

  factory GeneratePdfData.fromJson(Map<String, dynamic> json) => _$GeneratePdfDataFromJson(json);
}
