// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_agent_applications_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAgentApplicationsResponseModelImpl
    _$$GetAgentApplicationsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAgentApplicationsResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : GetAgentApplicationsData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetAgentApplicationsResponseModelImplToJson(
        _$GetAgentApplicationsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$GetAgentApplicationsDataImpl _$$GetAgentApplicationsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAgentApplicationsDataImpl(
      responseBody: json['rb'] == null
          ? null
          : GetAgentApplicationsResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$GetAgentApplicationsDataImplToJson(
        _$GetAgentApplicationsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$GetAgentApplicationsResponseBodyImpl
    _$$GetAgentApplicationsResponseBodyImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAgentApplicationsResponseBodyImpl(
          agentApplicationList: (json['agentApplicationList'] as List<dynamic>?)
              ?.map((e) =>
                  AgentApplicationModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAgentApplicationsResponseBodyImplToJson(
        _$GetAgentApplicationsResponseBodyImpl instance) =>
    <String, dynamic>{
      'agentApplicationList': instance.agentApplicationList,
    };
