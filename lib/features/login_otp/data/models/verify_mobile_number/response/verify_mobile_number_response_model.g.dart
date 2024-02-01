// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_mobile_number_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyMobileNumberResponseModelImpl
    _$$VerifyMobileNumberResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$VerifyMobileNumberResponseModelImpl(
          refCode: json['refCode'] as String?,
          tokenData: json['tokenData'] == null
              ? null
              : TokenData.fromJson(json['tokenData'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$VerifyMobileNumberResponseModelImplToJson(
        _$VerifyMobileNumberResponseModelImpl instance) =>
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
