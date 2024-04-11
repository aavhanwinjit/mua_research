// To parse this JSON data, do
//
//     final saveAddressDetailsResponseModel = saveAddressDetailsResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_address_details_response_model.freezed.dart';
part 'save_address_details_response_model.g.dart';

SaveAddressDetailsResponseModel saveAddressDetailsResponseModelFromJson(String str) =>
    SaveAddressDetailsResponseModel.fromJson(json.decode(str));

String saveAddressDetailsResponseModelToJson(SaveAddressDetailsResponseModel data) => json.encode(data.toJson());

@freezed
class SaveAddressDetailsResponseModel with _$SaveAddressDetailsResponseModel {
  const factory SaveAddressDetailsResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SaveAddressDetailsData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SaveAddressDetailsResponseModel;

  factory SaveAddressDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SaveAddressDetailsResponseModelFromJson(json);
}

@freezed
class SaveAddressDetailsData with _$SaveAddressDetailsData {
  const factory SaveAddressDetailsData({
    @JsonKey(name: "rb") AgentApplicationModel? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SaveAddressDetailsData;

  factory SaveAddressDetailsData.fromJson(Map<String, dynamic> json) => _$SaveAddressDetailsDataFromJson(json);
}
