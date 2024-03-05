// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
