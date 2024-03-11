// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_mpin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeMPINResponseModelImpl _$$ChangeMPINResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeMPINResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : ChangeMPINData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChangeMPINResponseModelImplToJson(
        _$ChangeMPINResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$ChangeMPINDataImpl _$$ChangeMPINDataImplFromJson(Map<String, dynamic> json) =>
    _$ChangeMPINDataImpl(
      responseBody: json['rb'] == null
          ? null
          : ChangeMPINResponseBody.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$ChangeMPINDataImplToJson(
        _$ChangeMPINDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$ChangeMPINResponseBodyImpl _$$ChangeMPINResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeMPINResponseBodyImpl(
      refCode: json['refCode'] as String?,
      tokenData: json['tokenData'] == null
          ? null
          : TokenData.fromJson(json['tokenData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChangeMPINResponseBodyImplToJson(
        _$ChangeMPINResponseBodyImpl instance) =>
    <String, dynamic>{
      'refCode': instance.refCode,
      'tokenData': instance.tokenData,
    };
