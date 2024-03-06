// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_fingerprint_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetFingerprintResponseModelImpl _$$SetFingerprintResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetFingerprintResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : SetFingerprintBody.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetFingerprintResponseModelImplToJson(
        _$SetFingerprintResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SetFingerprintBodyImpl _$$SetFingerprintBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SetFingerprintBodyImpl(
      responseBody: json['rb'] == null
          ? null
          : SetFingerprintResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SetFingerprintBodyImplToJson(
        _$SetFingerprintBodyImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$SetFingerprintResponseBodyImpl _$$SetFingerprintResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SetFingerprintResponseBodyImpl(
      data: json['data'] == null
          ? null
          : SetFingerprintData.fromJson(json['data'] as Map<String, dynamic>),
      tokenData: json['tokenData'] == null
          ? null
          : TokenData.fromJson(json['tokenData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetFingerprintResponseBodyImplToJson(
        _$SetFingerprintResponseBodyImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'tokenData': instance.tokenData,
    };

_$SetFingerprintDataImpl _$$SetFingerprintDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SetFingerprintDataImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetFingerprintDataImplToJson(
        _$SetFingerprintDataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$DataDataImpl _$$DataDataImplFromJson(Map<String, dynamic> json) =>
    _$DataDataImpl(
      id: json['id'] as String?,
      deviceToken: json['deviceToken'] as String?,
    );

Map<String, dynamic> _$$DataDataImplToJson(_$DataDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceToken': instance.deviceToken,
    };
