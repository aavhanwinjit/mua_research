// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_agent_mpin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetAgentMpinResponseModelImpl _$$SetAgentMpinResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetAgentMpinResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : SetAgentMpinData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetAgentMpinResponseModelImplToJson(
        _$SetAgentMpinResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SetAgentMpinDataImpl _$$SetAgentMpinDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SetAgentMpinDataImpl(
      responseBody: json['rb'] == null
          ? null
          : SetAgentMpinResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SetAgentMpinDataImplToJson(
        _$SetAgentMpinDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$SetAgentMpinResponseBodyImpl _$$SetAgentMpinResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SetAgentMpinResponseBodyImpl(
      refCode: json['refCode'] as String?,
      tokenData: json['tokenData'] == null
          ? null
          : TokenData.fromJson(json['tokenData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetAgentMpinResponseBodyImplToJson(
        _$SetAgentMpinResponseBodyImpl instance) =>
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
