// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_pdf_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneratePdfResponseModelImpl _$$GeneratePdfResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneratePdfResponseModelImpl(
      headerModel: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : GeneratePdfData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeneratePdfResponseModelImplToJson(
        _$GeneratePdfResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.headerModel,
      'b': instance.body,
      's': instance.status,
    };

_$GeneratePdfDataImpl _$$GeneratePdfDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneratePdfDataImpl(
      responseBody: json['rb'] as String?,
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$GeneratePdfDataImplToJson(
        _$GeneratePdfDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
