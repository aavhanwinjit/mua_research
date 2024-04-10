// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_por_document_types_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPorDocumentTypesResponseModelImpl
    _$$GetPorDocumentTypesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetPorDocumentTypesResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : GetPORDocumentTypesData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetPorDocumentTypesResponseModelImplToJson(
        _$GetPorDocumentTypesResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$GetPORDocumentTypesDataImpl _$$GetPORDocumentTypesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPORDocumentTypesDataImpl(
      responseBody: (json['rb'] as List<dynamic>?)
          ?.map((e) => PORDocumentTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$GetPORDocumentTypesDataImplToJson(
        _$GetPORDocumentTypesDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$PORDocumentTypeModelImpl _$$PORDocumentTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PORDocumentTypeModelImpl(
      porDocumentTypeId: json['porDocumentTypeId'] as int?,
      porDocType: json['porDocType'] as String?,
      documentCode: json['documentCode'] as String?,
    );

Map<String, dynamic> _$$PORDocumentTypeModelImplToJson(
        _$PORDocumentTypeModelImpl instance) =>
    <String, dynamic>{
      'porDocumentTypeId': instance.porDocumentTypeId,
      'porDocType': instance.porDocType,
      'documentCode': instance.documentCode,
    };
