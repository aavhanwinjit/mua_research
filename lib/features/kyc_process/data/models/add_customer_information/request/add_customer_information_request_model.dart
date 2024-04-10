// To parse this JSON data, do
//
//     final addCustomerInformationRequestModel = addCustomerInformationRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_customer_information_request_model.freezed.dart';
part 'add_customer_information_request_model.g.dart';

AddCustomerInformationRequestModel addCustomerInformationRequestModelFromJson(String str) =>
    AddCustomerInformationRequestModel.fromJson(json.decode(str));

String addCustomerInformationRequestModelToJson(AddCustomerInformationRequestModel data) => json.encode(data.toJson());

@freezed
class AddCustomerInformationRequestModel with _$AddCustomerInformationRequestModel {
  const factory AddCustomerInformationRequestModel({
    @JsonKey(name: "mobileNumber") String? mobileNumber,
    @JsonKey(name: "emailId") String? emailId,
    @JsonKey(name: "maritalStatus") String? maritalStatus,
    @JsonKey(name: "nationality") String? nationality,
    @JsonKey(name: "quoteNumber") String? quoteNumber,
    @JsonKey(name: "kycTypeId") int? kycTypeId,
    @JsonKey(name: "policyNumber") String? policyNumber,
  }) = _AddCustomerInformationRequestModel;

  factory AddCustomerInformationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddCustomerInformationRequestModelFromJson(json);
}
