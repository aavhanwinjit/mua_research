// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_key_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageKeyModelImpl _$$MessageKeyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageKeyModelImpl(
      requestUUID: json['r'] as String?,
      serviceRequest: json['sr'] as String?,
      channelId: json['c'] as String?,
      journeyId: json['j'] as String?,
      sessionId: json['s'] as String?,
      index: json['i'] as String?,
      languageId: json['l'] as String?,
      timestamp: json['t'] as String?,
      ci: json['ci'],
    );

Map<String, dynamic> _$$MessageKeyModelImplToJson(
        _$MessageKeyModelImpl instance) =>
    <String, dynamic>{
      'r': instance.requestUUID,
      'sr': instance.serviceRequest,
      'c': instance.channelId,
      'j': instance.journeyId,
      's': instance.sessionId,
      'i': instance.index,
      'l': instance.languageId,
      't': instance.timestamp,
      'ci': instance.ci,
    };
