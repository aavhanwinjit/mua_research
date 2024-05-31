// To parse this JSON data, do
//
//     final scanDocumentRequestModel = scanDocumentRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_document_request_model.freezed.dart';
part 'scan_document_request_model.g.dart';

ScanDocumentRequestModel scanDocumentRequestModelFromJson(String str) =>
    ScanDocumentRequestModel.fromJson(json.decode(str));

String scanDocumentRequestModelToJson(ScanDocumentRequestModel data) => json.encode(data.toJson());

@freezed
class ScanDocumentRequestModel with _$ScanDocumentRequestModel {
  const factory ScanDocumentRequestModel({
    @JsonKey(name: "applicantType") String? applicantType,
    @JsonKey(name: "policyType") String? policyType,
    @JsonKey(name: "documentCategory") String? documentCategory,
    @JsonKey(name: "documentType") String? documentType,
    @JsonKey(name: "documentSide") String? documentSide,
    @JsonKey(name: "customerId") String? customerId,
    @JsonKey(name: "policyNumber") String? policyNumber,
    @JsonKey(name: "fileExtension") String? fileExtension,
    @JsonKey(name: "nicNumber") String? nicNumber,
    @JsonKey(name: "passportNumber") String? passportNumber,
    @JsonKey(name: "quoteNumber") String? quoteNumber,
    @JsonKey(name: "verificationData") VerificationData? verificationData,
    @JsonKey(name: "base64Doc") String? base64Doc,
  }) = _ScanDocumentRequestModel;

  factory ScanDocumentRequestModel.fromJson(Map<String, dynamic> json) => _$ScanDocumentRequestModelFromJson(json);
}

@freezed
class VerificationData with _$VerificationData {
  const factory VerificationData({
    @JsonKey(name: "firstName") String? firstName,
    @JsonKey(name: "surname") String? surname,
    @JsonKey(name: "idNumber") String? idNumber,
    @JsonKey(name: "billDate") String? billDate,
    @JsonKey(name: "registration_Mark") String? registrationMark,
    @JsonKey(name: "issueDate") String? issueDate,
  }) = _VerificationData;

  factory VerificationData.fromJson(Map<String, dynamic> json) => _$VerificationDataFromJson(json);
}
