// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_mobile_number_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyMobileNumberResponseModelImpl
    _$$VerifyMobileNumberResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$VerifyMobileNumberResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : VerifyMobileNumberData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$VerifyMobileNumberResponseModelImplToJson(
        _$VerifyMobileNumberResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$VerifyMobileNumberDataImpl _$$VerifyMobileNumberDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyMobileNumberDataImpl(
      responseBody: json['rb'] == null
          ? null
          : VerifyMobileNumberResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$VerifyMobileNumberDataImplToJson(
        _$VerifyMobileNumberDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$VerifyMobileNumberResponseBodyImpl
    _$$VerifyMobileNumberResponseBodyImplFromJson(Map<String, dynamic> json) =>
        _$VerifyMobileNumberResponseBodyImpl(
          refCode: json['refCode'] as String?,
          tokenData: json['tokenData'] == null
              ? null
              : TokenData.fromJson(json['tokenData'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$VerifyMobileNumberResponseBodyImplToJson(
        _$VerifyMobileNumberResponseBodyImpl instance) =>
    <String, dynamic>{
      'refCode': instance.refCode,
      'tokenData': instance.tokenData,
    };
