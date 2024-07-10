// To parse this JSON data, do
//
//     final saveIdentityDetailsRequestModel = saveIdentityDetailsRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_motor_insurance_documents_request_model.freezed.dart';
part 'save_motor_insurance_documents_request_model.g.dart';

SaveMotorInsuranceDocumentsRequestModel saveMotorInsuranceDocumentsRequestModelFromJson(String str) =>
    SaveMotorInsuranceDocumentsRequestModel.fromJson(json.decode(str));

String saveMotorInsuranceDocumentsRequestModelToJson(SaveMotorInsuranceDocumentsRequestModel data) =>
    json.encode(data.toJson());

@freezed
class SaveMotorInsuranceDocumentsRequestModel with _$SaveMotorInsuranceDocumentsRequestModel {
  const factory SaveMotorInsuranceDocumentsRequestModel({
    @JsonKey(name: 'agentApplicationId') int? agentApplicationId,
    @JsonKey(name: 'isMotorDocVerificationCompleted') bool? isMotorDocVerificationCompleted,
    @JsonKey(name: 'motorDoumentDetailsModel') List<MotorDocDetail>? motorDocumentDetailsModel,
  }) = _SaveMotorInsuranceDocumentsRequestModel;

  factory SaveMotorInsuranceDocumentsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveMotorInsuranceDocumentsRequestModelFromJson(json);
}

@freezed
class MotorDocDetail with _$MotorDocDetail {
  const factory MotorDocDetail({
    @JsonKey(name: 'uploadDocumentId') int? uploadDocumentId,
    @JsonKey(name: 'motorDocumentTypeId') int? motorDocumentTypeId,
    @JsonKey(name: 'motorDocuImagePath') String? motorDocImagePath,
  }) = _MotorDocDetail;

  factory MotorDocDetail.fromJson(Map<String, dynamic> json) => _$MotorDocDetailFromJson(json);
}
