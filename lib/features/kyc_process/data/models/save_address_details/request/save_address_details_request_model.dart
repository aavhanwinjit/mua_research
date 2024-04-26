// To parse this JSON data, do
//
//     final saveAddressDetailsRequestModel = saveAddressDetailsRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_address_details_request_model.freezed.dart';
part 'save_address_details_request_model.g.dart';

SaveAddressDetailsRequestModel saveAddressDetailsRequestModelFromJson(String str) =>
    SaveAddressDetailsRequestModel.fromJson(json.decode(str));

String saveAddressDetailsRequestModelToJson(SaveAddressDetailsRequestModel data) => json.encode(data.toJson());

@freezed
class SaveAddressDetailsRequestModel with _$SaveAddressDetailsRequestModel {
  const factory SaveAddressDetailsRequestModel({
    @JsonKey(name: "applicationRefNo") String? applicationRefNo,
    @JsonKey(name: "documentTypeId") int? documentTypeId,
    @JsonKey(name: "docImagePath") String? docImagePath,
    @JsonKey(name: "docSurname") String? docSurname,
    @JsonKey(name: "docOtherName") String? docOtherName,
    @JsonKey(name: "docBillDate") String? docBillDate,
    @JsonKey(name: "docAddress") String? docAddress,
    @JsonKey(name: "uploadedDocumentId") int? uploadedDocumentId,
    @JsonKey(name: "isAddressVerificationCompleted") bool? isAddressVerificationCompleted,
    @JsonKey(name: "porRequired") bool? porRequired,
  }) = _SaveAddressDetailsRequestModel;

  factory SaveAddressDetailsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveAddressDetailsRequestModelFromJson(json);
}
