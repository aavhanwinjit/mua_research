// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_document_types_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAddressDocumentTypesResponseModelImpl
    _$$GetAddressDocumentTypesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAddressDocumentTypesResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : AddressDocumentTypesData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetAddressDocumentTypesResponseModelImplToJson(
        _$GetAddressDocumentTypesResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$AddressDocumentTypesDataImpl _$$AddressDocumentTypesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDocumentTypesDataImpl(
      responseBody: (json['rb'] as List<dynamic>?)
          ?.map((e) =>
              AddressDocumentTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$AddressDocumentTypesDataImplToJson(
        _$AddressDocumentTypesDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$AddressDocumentTypeModelImpl _$$AddressDocumentTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDocumentTypeModelImpl(
      addressDocumentTypeId: json['addressDocumentTypeId'] as int?,
      addressDocType: json['addressDocType'] as String?,
      documentCode: json['documentCode'] as String?,
    );

Map<String, dynamic> _$$AddressDocumentTypeModelImplToJson(
        _$AddressDocumentTypeModelImpl instance) =>
    <String, dynamic>{
      'addressDocumentTypeId': instance.addressDocumentTypeId,
      'addressDocType': instance.addressDocType,
      'documentCode': instance.documentCode,
    };
