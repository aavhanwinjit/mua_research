// To parse this JSON data, do
//
//     final scanDocumentResponseModel = scanDocumentResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_document_response_model.freezed.dart';
part 'scan_document_response_model.g.dart';

ScanDocumentResponseModel scanDocumentResponseModelFromJson(String str) =>
    ScanDocumentResponseModel.fromJson(json.decode(str));

String scanDocumentResponseModelToJson(ScanDocumentResponseModel data) => json.encode(data.toJson());

@freezed
class ScanDocumentResponseModel with _$ScanDocumentResponseModel {
  const factory ScanDocumentResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") ScanDocumentResponseData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _ScanDocumentResponseModel;

  factory ScanDocumentResponseModel.fromJson(Map<String, dynamic> json) => _$ScanDocumentResponseModelFromJson(json);
}

@freezed
class ScanDocumentResponseData with _$ScanDocumentResponseData {
  const factory ScanDocumentResponseData({
    @JsonKey(name: "rb") ScanDocumentResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _ScanDocumentResponseData;

  factory ScanDocumentResponseData.fromJson(Map<String, dynamic> json) => _$ScanDocumentResponseDataFromJson(json);
}

@freezed
class ScanDocumentResponseBody with _$ScanDocumentResponseBody {
  const factory ScanDocumentResponseBody({
    @JsonKey(name: "fileName") String? fileName,
    @JsonKey(name: "ocrResponse") OcrResponse? ocrResponse,
    @JsonKey(name: "uploadedDocumentId") int? uploadedDocumentId,
    @JsonKey(name: "currentDateTime") String? currentDateTime,
  }) = _ScanDocumentResponseBody;

  factory ScanDocumentResponseBody.fromJson(Map<String, dynamic> json) => _$ScanDocumentResponseBodyFromJson(json);
}

@freezed
class OcrResponse with _$OcrResponse {
  const factory OcrResponse({
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "documentdata") Documentdata? documentdata,
    @JsonKey(name: "msg") String? msg,
  }) = _OcrResponse;

  factory OcrResponse.fromJson(Map<String, dynamic> json) => _$OcrResponseFromJson(json);
}

@freezed
class Documentdata with _$Documentdata {
  const factory Documentdata({
    @JsonKey(name: "kyc_status") String? kycStatus,
    @JsonKey(name: "kyc_status_msg") String? kycStatusMsg,
    @JsonKey(name: "isFirstNameAvailable") bool? isFirstNameAvailable,
    @JsonKey(name: "isLastNameAvailable") bool? isLastNameAvailable,
    @JsonKey(name: "isIdNumberAvailable") bool? isIdNumberAvailable,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "id_number") String? idNumber,
    @JsonKey(name: "billDate") String? billDate,
    @JsonKey(name: "issueDate") String? issueDate,
    @JsonKey(name: "isRegistrationMarkAvailable") bool? isRegistrationMarkAvailable,
    @JsonKey(name: "registrationMark") dynamic registrationMark,
    @JsonKey(name: "address") String? address,
  }) = _Documentdata;

  factory Documentdata.fromJson(Map<String, dynamic> json) => _$DocumentdataFromJson(json);
}
