// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_agent_applications_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAgentApplicationsRequestModelImpl
    _$$GetAgentApplicationsRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAgentApplicationsRequestModelImpl(
          agentId: (json['agentId'] as num?)?.toInt(),
          status: json['status'] as String?,
          applicationSearch: json['applicationSearch'] as String?,
          rowsPerPage: (json['rowsPerPage'] as num?)?.toInt(),
          pageNo: (json['pageNo'] as num?)?.toInt(),
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
