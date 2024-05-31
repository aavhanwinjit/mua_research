// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_por_documents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavePorDocumentsResponseModelImpl
    _$$SavePorDocumentsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$SavePorDocumentsResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : SavePORDocumentsData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SavePorDocumentsResponseModelImplToJson(
        _$SavePorDocumentsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SavePORDocumentsDataImpl _$$SavePORDocumentsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SavePORDocumentsDataImpl(
      responseBody: json['rb'] == null
          ? null
          : AgentApplicationModel.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SavePORDocumentsDataImplToJson(
        _$SavePORDocumentsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
