// To parse this JSON data, do
//
//     final saveIdentityDetailsRequestModel = saveIdentityDetailsRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_identity_details_request_model.freezed.dart';
part 'save_identity_details_request_model.g.dart';

SaveIdentityDetailsRequestModel saveIdentityDetailsRequestModelFromJson(String str) =>
    SaveIdentityDetailsRequestModel.fromJson(json.decode(str));

String saveIdentityDetailsRequestModelToJson(SaveIdentityDetailsRequestModel data) => json.encode(data.toJson());

@freezed
class SaveIdentityDetailsRequestModel with _$SaveIdentityDetailsRequestModel {
  const factory SaveIdentityDetailsRequestModel({
    @JsonKey(name: "applicationRefNo") String? applicationRefNo,
    @JsonKey(name: "idDocTypeId") int? idDocTypeId,
    @JsonKey(name: "surname") String? surname,
    @JsonKey(name: "otherName") String? otherName,
    @JsonKey(name: "idDocNumber") String? idDocNumber,
    @JsonKey(name: "idDocFrontImage") String? idDocFrontImage,
    @JsonKey(name: "idDocBackImage") String? idDocBackImage,
    @JsonKey(name: "IDDocFrontUploadedDocumentId") String? iDDocFrontUploadedDocumentId,
    @JsonKey(name: "IDDocBackUploadedDocumentId") String? iDDocBackUploadedDocumentId,

    // @JsonKey(name: "applicantType") String? applicantType,
    // @JsonKey(name: "policyType") String? policyType,
    // @JsonKey(name: "documentCategory") String? documentCategory,
    // @JsonKey(name: "documentSide") String? documentSide,
    // @JsonKey(name: "documentType") String? documentType,
    // @JsonKey(name: "customerId") String? customerId,
    // @JsonKey(name: "fileExtension") String? fileExtension,
    // @JsonKey(name: "quoteNumber") String? quoteNumber,
    // @JsonKey(name: "idDocFrontUploadedDocumentId") int? idDocFrontUploadedDocumentId,
    // @JsonKey(name: "idDocBackUploadedDocumentId") int? idDocBackUploadedDocumentId,
  }) = _SaveIdentityDetailsRequestModel;

  factory SaveIdentityDetailsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveIdentityDetailsRequestModelFromJson(json);
}
