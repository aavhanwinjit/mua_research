// To parse this JSON data, do
//
//     final getKycTypesRequestModel = getKycTypesRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_kyc_types_request_model.freezed.dart';
part 'get_kyc_types_request_model.g.dart';

GetKycTypesRequestModel getKycTypesRequestModelFromJson(String str) =>
    GetKycTypesRequestModel.fromJson(json.decode(str));

String getKycTypesRequestModelToJson(GetKycTypesRequestModel data) => json.encode(data.toJson());

@freezed
class GetKycTypesRequestModel with _$GetKycTypesRequestModel {
  const factory GetKycTypesRequestModel({
    @JsonKey(name: "id") String? id,
  }) = _GetKycTypesRequestModel;

  factory GetKycTypesRequestModel.fromJson(Map<String, dynamic> json) => _$GetKycTypesRequestModelFromJson(json);
}
