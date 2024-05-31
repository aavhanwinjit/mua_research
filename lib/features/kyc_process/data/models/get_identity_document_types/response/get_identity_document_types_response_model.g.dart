// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_identity_document_types_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetIdentityDocumentTypesResponseModelImpl
    _$$GetIdentityDocumentTypesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetIdentityDocumentTypesResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : IdentityDocumentTypesData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetIdentityDocumentTypesResponseModelImplToJson(
        _$GetIdentityDocumentTypesResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$IdentityDocumentTypesDataImpl _$$IdentityDocumentTypesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$IdentityDocumentTypesDataImpl(
      responseBody: (json['rb'] as List<dynamic>?)
          ?.map((e) =>
              IdentityDocumentTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$IdentityDocumentTypesDataImplToJson(
        _$IdentityDocumentTypesDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$IdentityDocumentTypeModelImpl _$$IdentityDocumentTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IdentityDocumentTypeModelImpl(
      identityDocumentTypeId: json['identityDocumentTypeId'] as int?,
      identityDocType: json['identityDocType'] as String?,
      documentCode: json['documentCode'] as String?,
    );

Map<String, dynamic> _$$IdentityDocumentTypeModelImplToJson(
        _$IdentityDocumentTypeModelImpl instance) =>
    <String, dynamic>{
      'identityDocumentTypeId': instance.identityDocumentTypeId,
      'identityDocType': instance.identityDocType,
      'documentCode': instance.documentCode,
    };
