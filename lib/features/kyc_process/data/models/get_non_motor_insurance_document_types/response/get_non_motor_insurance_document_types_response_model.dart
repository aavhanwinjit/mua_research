// To parse this JSON data, do
//
//     final getNonMotorInsuranceDocumentTypesResponseModel = getNonMotorInsuranceDocumentTypesResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_non_motor_insurance_document_types_response_model.freezed.dart';
part 'get_non_motor_insurance_document_types_response_model.g.dart';

GetNonMotorInsuranceDocumentTypesResponseModel
    getNonMotorInsuranceDocumentTypesResponseModelFromJson(String str) =>
        GetNonMotorInsuranceDocumentTypesResponseModel.fromJson(
            json.decode(str));

String getNonMotorInsuranceDocumentTypesResponseModelToJson(
        GetNonMotorInsuranceDocumentTypesResponseModel data) =>
    json.encode(data.toJson());

@freezed
class GetNonMotorInsuranceDocumentTypesResponseModel
    with _$GetNonMotorInsuranceDocumentTypesResponseModel {
  const factory GetNonMotorInsuranceDocumentTypesResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") GetNonMotorInsuranceDocumentTypesData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetNonMotorInsuranceDocumentTypesResponseModel;

  factory GetNonMotorInsuranceDocumentTypesResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$GetNonMotorInsuranceDocumentTypesResponseModelFromJson(json);
}

@freezed
class GetNonMotorInsuranceDocumentTypesData
    with _$GetNonMotorInsuranceDocumentTypesData {
  const factory GetNonMotorInsuranceDocumentTypesData({
    @JsonKey(name: "rb") List<NonMotorInsuranceDocumentTypeModel>? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GetNonMotorInsuranceDocumentTypesData;

  factory GetNonMotorInsuranceDocumentTypesData.fromJson(
          Map<String, dynamic> json) =>
      _$GetNonMotorInsuranceDocumentTypesDataFromJson(json);
}

@freezed
class NonMotorInsuranceDocumentTypeModel
    with _$NonMotorInsuranceDocumentTypeModel {
  const factory NonMotorInsuranceDocumentTypeModel({
    @JsonKey(name: "nonMotorInsuranceDocumentTypeId") int? mDocumentTypeId,
    @JsonKey(name: "nonMotorInsuranceDocType") String? nonMotorInsuranceDocType,
    @JsonKey(name: "documentCode") String? documentCode,
  }) = _NonMotorInsuranceDocumentTypeModel;

  factory NonMotorInsuranceDocumentTypeModel.fromJson(
          Map<String, dynamic> json) =>
      _$NonMotorInsuranceDocumentTypeModelFromJson(json);
}
