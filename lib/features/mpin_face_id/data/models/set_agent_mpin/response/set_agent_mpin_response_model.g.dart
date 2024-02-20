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
          : AgentLoginDetailsResponseModel.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SetAgentMpinDataImplToJson(
        _$SetAgentMpinDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
