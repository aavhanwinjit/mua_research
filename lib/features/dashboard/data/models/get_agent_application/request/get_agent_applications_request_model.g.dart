// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_agent_applications_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAgentApplicationsRequestModelImpl
    _$$GetAgentApplicationsRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAgentApplicationsRequestModelImpl(
          agentId: json['agentId'] as int?,
          status: json['status'] as String?,
          applicationSearch: json['applicationSearch'] as String?,
          rowsPerPage: json['rowsPerPage'] as int?,
          pageNo: json['pageNo'] as int?,
        );

Map<String, dynamic> _$$GetAgentApplicationsRequestModelImplToJson(
        _$GetAgentApplicationsRequestModelImpl instance) =>
    <String, dynamic>{
      'agentId': instance.agentId,
      'status': instance.status,
      'applicationSearch': instance.applicationSearch,
      'rowsPerPage': instance.rowsPerPage,
      'pageNo': instance.pageNo,
    };
