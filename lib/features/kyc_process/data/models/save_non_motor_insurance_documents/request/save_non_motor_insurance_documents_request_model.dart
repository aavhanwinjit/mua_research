// To parse this JSON data, do
//
//     final saveIdentityDetailsRequestModel = saveIdentityDetailsRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_non_motor_insurance_documents_request_model.freezed.dart';
part 'save_non_motor_insurance_documents_request_model.g.dart';

SaveNonMotorInsuranceDocumentsRequestModel
    saveNonMotorInsuranceDocumentsRequestModelFromJson(String str) =>
        SaveNonMotorInsuranceDocumentsRequestModel.fromJson(json.decode(str));

String saveNonMotorInsuranceDocumentsRequestModelToJson(
        SaveNonMotorInsuranceDocumentsRequestModel data) =>
    json.encode(data.toJson());

@freezed
class SaveNonMotorInsuranceDocumentsRequestModel
    with _$SaveNonMotorInsuranceDocumentsRequestModel {
  const factory SaveNonMotorInsuranceDocumentsRequestModel({
    @JsonKey(name: 'agentApplicationId') int? agentApplicationId,
    @JsonKey(name: 'isMotorDocVerificationCompleted')
    bool? isMotorDocVerificationCompleted,
    @JsonKey(name: 'motorDoumentDetailsModel')
    List<MotorDocDetail>? motorDocumentDetailsModel,
  }) = _SaveNonMotorInsuranceDocumentsRequestModel;

  factory SaveNonMotorInsuranceDocumentsRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$SaveNonMotorInsuranceDocumentsRequestModelFromJson(json);
}

@freezed
class MotorDocDetail with _$MotorDocDetail {
  const factory MotorDocDetail({
    @JsonKey(name: 'uploadDocumentId') int? uploadDocumentId,
    @JsonKey(name: 'motorDocumentTypeId') int? motorDocumentTypeId,
    @JsonKey(name: 'motorDocuImagePath') String? motorDocuImagePath,
  }) = _MotorDocDetail;

  factory MotorDocDetail.fromJson(Map<String, dynamic> json) =>
      _$MotorDocDetailFromJson(json);
}
