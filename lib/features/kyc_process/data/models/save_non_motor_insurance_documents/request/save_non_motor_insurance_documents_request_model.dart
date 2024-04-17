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
    @JsonKey(name: 'isNonMotorDocVerificationCompleted')
    bool? isNonMotorDocVerificationCompleted,
    @JsonKey(name: 'nonMotorInsuranceDocDetailsModel')
    List<NonMotorDocDetail>? nonMotorDocumentDetailsModel,
  }) = _SaveNonMotorInsuranceDocumentsRequestModel;

  factory SaveNonMotorInsuranceDocumentsRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$SaveNonMotorInsuranceDocumentsRequestModelFromJson(json);
}

@freezed
class NonMotorDocDetail with _$NonMotorDocDetail {
  const factory NonMotorDocDetail({
    @JsonKey(name: 'uploadDocumentId') int? uploadDocumentId,
    @JsonKey(name: 'nonMotorInsuranceDocumentTypeId')
    int? nonMotorDocumentTypeId,
    @JsonKey(name: 'nonMotorDocImagePath') String? nonMotorDocImagePath,
  }) = _NonMotorDocDetail;

  factory NonMotorDocDetail.fromJson(Map<String, dynamic> json) =>
      _$NonMotorDocDetailFromJson(json);
}
