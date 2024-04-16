// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_additional_documents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveAdditionalDocumentsResponseModelImpl
    _$$SaveAdditionalDocumentsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveAdditionalDocumentsResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : SaveAdditionalDocumentsData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SaveAdditionalDocumentsResponseModelImplToJson(
        _$SaveAdditionalDocumentsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SaveAdditionalDocumentsDataImpl _$$SaveAdditionalDocumentsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveAdditionalDocumentsDataImpl(
      responseBody: json['rb'] == null
          ? null
          : AgentApplicationModel.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SaveAdditionalDocumentsDataImplToJson(
        _$SaveAdditionalDocumentsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
