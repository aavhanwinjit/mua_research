// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_policy_document_types_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPolicyDocumentTypesResponseModelImpl
    _$$GetPolicyDocumentTypesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetPolicyDocumentTypesResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : GetPolicyDocumentTypesData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetPolicyDocumentTypesResponseModelImplToJson(
        _$GetPolicyDocumentTypesResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$GetPolicyDocumentTypesDataImpl _$$GetPolicyDocumentTypesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPolicyDocumentTypesDataImpl(
      responseBody: (json['rb'] as List<dynamic>?)
          ?.map((e) =>
              PolicyDocumentTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$GetPolicyDocumentTypesDataImplToJson(
        _$GetPolicyDocumentTypesDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$PolicyDocumentTypeModelImpl _$$PolicyDocumentTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PolicyDocumentTypeModelImpl(
      policyDocumentTypeId: json['policyDocumentTypeId'] as int?,
      policyDocTypes: json['policyDocTypes'] as String?,
      documentCode: json['documentCode'] as String?,
    );

Map<String, dynamic> _$$PolicyDocumentTypeModelImplToJson(
        _$PolicyDocumentTypeModelImpl instance) =>
    <String, dynamic>{
      'policyDocumentTypeId': instance.policyDocumentTypeId,
      'policyDocTypes': instance.policyDocTypes,
      'documentCode': instance.documentCode,
    };
