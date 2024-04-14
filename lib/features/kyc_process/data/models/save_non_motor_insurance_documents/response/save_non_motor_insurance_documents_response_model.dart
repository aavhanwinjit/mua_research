import 'dart:convert';

import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_non_motor_insurance_documents_response_model.freezed.dart';
part 'save_non_motor_insurance_documents_response_model.g.dart';

SaveNonMotorInsuranceDocumentsResponseModel
    saveNonMotorInsuranceDocumentsResponseModelFromJson(String str) =>
        SaveNonMotorInsuranceDocumentsResponseModel.fromJson(json.decode(str));

String saveNonMotorInsuranceDocumentsResponseModelToJson(
        SaveNonMotorInsuranceDocumentsResponseModel data) =>
    json.encode(data.toJson());

@freezed
class SaveNonMotorInsuranceDocumentsResponseModel
    with _$SaveNonMotorInsuranceDocumentsResponseModel {
  const factory SaveNonMotorInsuranceDocumentsResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SaveNonMotorInsuranceDocumentsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SaveNonMotorInsuranceDocumentsResponseModel;

  factory SaveNonMotorInsuranceDocumentsResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$SaveNonMotorInsuranceDocumentsResponseModelFromJson(json);
}

@freezed
class SaveNonMotorInsuranceDocumentsData
    with _$SaveNonMotorInsuranceDocumentsData {
  const factory SaveNonMotorInsuranceDocumentsData({
    @JsonKey(name: "rb") AgentApplicationModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SaveNonMotorInsuranceDocumentsData;

  factory SaveNonMotorInsuranceDocumentsData.fromJson(
          Map<String, dynamic> json) =>
      _$SaveNonMotorInsuranceDocumentsDataFromJson(json);
}
