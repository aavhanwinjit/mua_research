// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResendOtpResponseModelImpl _$$ResendOtpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResendOtpResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : ResendOtpData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResendOtpResponseModelImplToJson(
        _$ResendOtpResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$ResendOtpDataImpl _$$ResendOtpDataImplFromJson(Map<String, dynamic> json) =>
    _$ResendOtpDataImpl(
      responseBody: json['rb'] == null
          ? null
          : ResendOtpResponseBody.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$ResendOtpDataImplToJson(_$ResendOtpDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$ResendOtpResponseBodyImpl _$$ResendOtpResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$ResendOtpResponseBodyImpl(
      refCode: json['refCode'] as String?,
      tokenData: json['tokenData'] == null
          ? null
          : TokenData.fromJson(json['tokenData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResendOtpResponseBodyImplToJson(
        _$ResendOtpResponseBodyImpl instance) =>
    <String, dynamic>{
      'refCode': instance.refCode,
      'tokenData': instance.tokenData,
    };

_$TokenDataImpl _$$TokenDataImplFromJson(Map<String, dynamic> json) =>
    _$TokenDataImpl(
      token: json['token'] as String?,
      sessionId: json['sessionId'] as String?,
      expiry: json['expiry'] as int?,
    );

Map<String, dynamic> _$$TokenDataImplToJson(_$TokenDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'sessionId': instance.sessionId,
      'expiry': instance.expiry,
    };
