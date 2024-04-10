// To parse this JSON data, do
//
//     final getAddressDocumentTypesResponseModel = getAddressDocumentTypesResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_address_document_types_response_model.freezed.dart';
part 'get_address_document_types_response_model.g.dart';

GetAddressDocumentTypesResponseModel getAddressDocumentTypesResponseModelFromJson(String str) =>
    GetAddressDocumentTypesResponseModel.fromJson(json.decode(str));

String getAddressDocumentTypesResponseModelToJson(GetAddressDocumentTypesResponseModel data) =>
    json.encode(data.toJson());

@freezed
class GetAddressDocumentTypesResponseModel with _$GetAddressDocumentTypesResponseModel {
  const factory GetAddressDocumentTypesResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") AddressDocumentTypesData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _GetAddressDocumentTypesResponseModel;

  factory GetAddressDocumentTypesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAddressDocumentTypesResponseModelFromJson(json);
}

@freezed
class AddressDocumentTypesData with _$AddressDocumentTypesData {
  const factory AddressDocumentTypesData({
    @JsonKey(name: "rb") List<AddressDocumentTypeModel>? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _AddressDocumentTypesData;

  factory AddressDocumentTypesData.fromJson(Map<String, dynamic> json) => _$AddressDocumentTypesDataFromJson(json);
}

@freezed
class AddressDocumentTypeModel with _$AddressDocumentTypeModel {
  const factory AddressDocumentTypeModel({
    @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
    @JsonKey(name: "addressDocType") String? addressDocType,
    @JsonKey(name: "documentCode") String? documentCode,
  }) = _AddressDocumentTypeModel;

  factory AddressDocumentTypeModel.fromJson(Map<String, dynamic> json) => _$AddressDocumentTypeModelFromJson(json);
}
