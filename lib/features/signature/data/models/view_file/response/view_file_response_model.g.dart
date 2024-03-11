// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_file_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewFileResponseModelImpl _$$ViewFileResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ViewFileResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : ViewFileData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ViewFileResponseModelImplToJson(
        _$ViewFileResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$ViewFileDataImpl _$$ViewFileDataImplFromJson(Map<String, dynamic> json) =>
    _$ViewFileDataImpl(
      responseBody: json['rb'] as String?,
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$ViewFileDataImplToJson(_$ViewFileDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
