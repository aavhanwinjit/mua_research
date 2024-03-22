// To parse this JSON data, do
//
//     final getKycTypesResponseModel = getKycTypesResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_kyc_types_response_model.freezed.dart';
part 'get_kyc_types_response_model.g.dart';

GetKycTypesResponseModel getKycTypesResponseModelFromJson(String str) =>
    GetKycTypesResponseModel.fromJson(json.decode(str));

String getKycTypesResponseModelToJson(GetKycTypesResponseModel data) => json.encode(data.toJson());

@freezed
class GetKycTypesResponseModel with _$GetKycTypesResponseModel {
  const factory GetKycTypesResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") GetKycTypesData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetKycTypesResponseModel;

  factory GetKycTypesResponseModel.fromJson(Map<String, dynamic> json) => _$GetKycTypesResponseModelFromJson(json);
}

@freezed
class GetKycTypesData with _$GetKycTypesData {
  const factory GetKycTypesData({
    @JsonKey(name: "rb") List<KycTypesModel>? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _GetKycTypesData;

  factory GetKycTypesData.fromJson(Map<String, dynamic> json) => _$GetKycTypesDataFromJson(json);
}

@freezed
class KycTypesModel with _$KycTypesModel {
  const factory KycTypesModel({
    @JsonKey(name: "kycTypeId") int? kycTypeId,
    @JsonKey(name: "kycTypes") String? kycTypes,
    @JsonKey(name: "companyId") String? companyId,
    @JsonKey(name: "isDisabled") bool? isDisabled,
    @JsonKey(name: "crd") DateTime? crd,
    @JsonKey(name: "crdBy") int? crdBy,
    @JsonKey(name: "lmd") DateTime? lmd,
    @JsonKey(name: "lmdBy") int? lmdBy,
  }) = _KycTypesModel;

  factory KycTypesModel.fromJson(Map<String, dynamic> json) => _$KycTypesModelFromJson(json);
}
