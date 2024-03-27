// To parse this JSON data, do
//
//     final addCustomerInformationResponseModel = addCustomerInformationResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_customer_information_response_model.freezed.dart';
part 'add_customer_information_response_model.g.dart';

AddCustomerInformationResponseModel addCustomerInformationResponseModelFromJson(String str) =>
    AddCustomerInformationResponseModel.fromJson(json.decode(str));

String addCustomerInformationResponseModelToJson(AddCustomerInformationResponseModel data) =>
    json.encode(data.toJson());

@freezed
class AddCustomerInformationResponseModel with _$AddCustomerInformationResponseModel {
  const factory AddCustomerInformationResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") AddCustomerInformationData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _AddCustomerInformationResponseModel;

  factory AddCustomerInformationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddCustomerInformationResponseModelFromJson(json);
}

@freezed
class AddCustomerInformationData with _$AddCustomerInformationData {
  const factory AddCustomerInformationData({
    @JsonKey(name: "rb") AgentApplicationModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _AddCustomerInformationData;

  factory AddCustomerInformationData.fromJson(Map<String, dynamic> json) => _$AddCustomerInformationDataFromJson(json);
}
