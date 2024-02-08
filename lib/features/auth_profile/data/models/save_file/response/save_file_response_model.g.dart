// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_file_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveFileResponseModelImpl _$$SaveFileResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveFileResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : SaveFileData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SaveFileResponseModelImplToJson(
        _$SaveFileResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SaveFileDataImpl _$$SaveFileDataImplFromJson(Map<String, dynamic> json) =>
    _$SaveFileDataImpl(
      responseBody: json['rb'] == null
          ? null
          : SaveFileResponseBody.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SaveFileDataImplToJson(_$SaveFileDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$SaveFileResponseBodyImpl _$$SaveFileResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveFileResponseBodyImpl(
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$$SaveFileResponseBodyImplToJson(
        _$SaveFileResponseBodyImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
    };
