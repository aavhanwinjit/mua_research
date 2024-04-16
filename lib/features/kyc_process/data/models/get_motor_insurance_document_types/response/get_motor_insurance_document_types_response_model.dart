// To parse this JSON data, do
//
//     final getMotorInsuranceDocumentTypesResponseModel = getMotorInsuranceDocumentTypesResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_motor_insurance_document_types_response_model.freezed.dart';
part 'get_motor_insurance_document_types_response_model.g.dart';

GetMotorInsuranceDocumentTypesResponseModel
    getMotorInsuranceDocumentTypesResponseModelFromJson(String str) =>
        GetMotorInsuranceDocumentTypesResponseModel.fromJson(json.decode(str));

String getMotorInsuranceDocumentTypesResponseModelToJson(
        GetMotorInsuranceDocumentTypesResponseModel data) =>
    json.encode(data.toJson());

@freezed
class GetMotorInsuranceDocumentTypesResponseModel
    with _$GetMotorInsuranceDocumentTypesResponseModel {
  const factory GetMotorInsuranceDocumentTypesResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") GetMotorInsuranceDocumentTypesData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetMotorInsuranceDocumentTypesResponseModel;

  factory GetMotorInsuranceDocumentTypesResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$GetMotorInsuranceDocumentTypesResponseModelFromJson(json);
}

@freezed
class GetMotorInsuranceDocumentTypesData
    with _$GetMotorInsuranceDocumentTypesData {
  const factory GetMotorInsuranceDocumentTypesData({
    @JsonKey(name: "rb") List<MotorInsuranceDocumentTypeModel>? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GetMotorInsuranceDocumentTypesData;

  factory GetMotorInsuranceDocumentTypesData.fromJson(
          Map<String, dynamic> json) =>
      _$GetMotorInsuranceDocumentTypesDataFromJson(json);
}

@freezed
class MotorInsuranceDocumentTypeModel with _$MotorInsuranceDocumentTypeModel {
  const factory MotorInsuranceDocumentTypeModel({
    @JsonKey(name: "motorInsuranceDocumentTypeId") int? mDocumentTypeId,
    @JsonKey(name: "motorInsuranceDocType") String? motorInsuranceDocType,
    @JsonKey(name: "documentCode") String? documentCode,
  }) = _MotorInsuranceDocumentTypeModel;

  factory MotorInsuranceDocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$MotorInsuranceDocumentTypeModelFromJson(json);
}
