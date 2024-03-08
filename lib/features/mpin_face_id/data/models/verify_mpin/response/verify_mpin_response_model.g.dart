// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_mpin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyMPINResponseModelImpl _$$VerifyMPINResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyMPINResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : VerifyMPINData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyMPINResponseModelImplToJson(
        _$VerifyMPINResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$VerifyMPINDataImpl _$$VerifyMPINDataImplFromJson(Map<String, dynamic> json) =>
    _$VerifyMPINDataImpl(
      responseBody: json['rb'] == null
          ? null
          : VerifyMPINResponseBody.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$VerifyMPINDataImplToJson(
        _$VerifyMPINDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$VerifyMPINResponseBodyImpl _$$VerifyMPINResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyMPINResponseBodyImpl(
      refCode: json['refCode'] as String?,
      tokenData: json['tokenData'] == null
          ? null
          : TokenData.fromJson(json['tokenData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyMPINResponseBodyImplToJson(
        _$VerifyMPINResponseBodyImpl instance) =>
    <String, dynamic>{
      'refCode': instance.refCode,
      'tokenData': instance.tokenData,
    };
