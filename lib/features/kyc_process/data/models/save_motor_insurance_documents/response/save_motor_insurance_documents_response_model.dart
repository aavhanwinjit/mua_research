import 'dart:convert';

import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_motor_insurance_documents_response_model.freezed.dart';
part 'save_motor_insurance_documents_response_model.g.dart';

SaveMotorInsuranceDocumentsResponseModel
    saveMotorInsuranceDocumentsResponseModelFromJson(String str) =>
        SaveMotorInsuranceDocumentsResponseModel.fromJson(json.decode(str));

String saveMotorInsuranceDocumentsResponseModelToJson(
        SaveMotorInsuranceDocumentsResponseModel data) =>
    json.encode(data.toJson());

@freezed
class SaveMotorInsuranceDocumentsResponseModel
    with _$SaveMotorInsuranceDocumentsResponseModel {
  const factory SaveMotorInsuranceDocumentsResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SaveMotorInsuranceDocumentsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SaveMotorInsuranceDocumentsResponseModel;

  factory SaveMotorInsuranceDocumentsResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$SaveMotorInsuranceDocumentsResponseModelFromJson(json);
}

@freezed
class SaveMotorInsuranceDocumentsData with _$SaveMotorInsuranceDocumentsData {
  const factory SaveMotorInsuranceDocumentsData({
    @JsonKey(name: "rb") AgentApplicationModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SaveMotorInsuranceDocumentsData;

  factory SaveMotorInsuranceDocumentsData.fromJson(Map<String, dynamic> json) =>
      _$SaveMotorInsuranceDocumentsDataFromJson(json);
}
