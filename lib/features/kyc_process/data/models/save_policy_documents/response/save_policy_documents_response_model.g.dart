// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_policy_documents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavePolicyDocumentsResponseModelImpl
    _$$SavePolicyDocumentsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SavePolicyDocumentsResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : SavePolicyDocumentsData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SavePolicyDocumentsResponseModelImplToJson(
        _$SavePolicyDocumentsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SavePolicyDocumentsDataImpl _$$SavePolicyDocumentsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SavePolicyDocumentsDataImpl(
      responseBody: json['rb'] == null
          ? null
          : AgentApplicationModel.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SavePolicyDocumentsDataImplToJson(
        _$SavePolicyDocumentsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
