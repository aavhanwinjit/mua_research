// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_additional_document_types_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAdditionalDocumentTypesResponseModelImpl
    _$$GetAdditionalDocumentTypesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAdditionalDocumentTypesResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : GetAdditionalDocumentTypesData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetAdditionalDocumentTypesResponseModelImplToJson(
        _$GetAdditionalDocumentTypesResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$GetAdditionalDocumentTypesDataImpl
    _$$GetAdditionalDocumentTypesDataImplFromJson(Map<String, dynamic> json) =>
        _$GetAdditionalDocumentTypesDataImpl(
          responseBody: (json['rb'] as List<dynamic>?)
              ?.map((e) => AdditionalDocumentTypeModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          checkSum: json['checkSum'] as String?,
        );

Map<String, dynamic> _$$GetAdditionalDocumentTypesDataImplToJson(
        _$GetAdditionalDocumentTypesDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$AdditionalDocumentTypeModelImpl _$$AdditionalDocumentTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalDocumentTypeModelImpl(
      additionalDocumentTypeId: json['additionalDocumentTypeId'] as int?,
      additionalDocumentTypeName: json['additionalDocumentTypeName'] as String?,
      documentCode: json['documentCode'] as String?,
    );

Map<String, dynamic> _$$AdditionalDocumentTypeModelImplToJson(
        _$AdditionalDocumentTypeModelImpl instance) =>
    <String, dynamic>{
      'additionalDocumentTypeId': instance.additionalDocumentTypeId,
      'additionalDocumentTypeName': instance.additionalDocumentTypeName,
      'documentCode': instance.documentCode,
    };
