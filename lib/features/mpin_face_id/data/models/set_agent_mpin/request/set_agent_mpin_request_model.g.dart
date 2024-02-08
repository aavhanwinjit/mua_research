// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_agent_mpin_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetAgentMpinRequestModelImpl _$$SetAgentMpinRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetAgentMpinRequestModelImpl(
      mpin: json['mpin'] as String?,
      confirmMpin: json['confirmMPIN'] as String?,
      mobileNo: json['mobileNo'] as String?,
      signaturePath: json['signaturePath'] as String?,
    );

Map<String, dynamic> _$$SetAgentMpinRequestModelImplToJson(
        _$SetAgentMpinRequestModelImpl instance) =>
    <String, dynamic>{
      'mpin': instance.mpin,
      'confirmMPIN': instance.confirmMpin,
      'mobileNo': instance.mobileNo,
      'signaturePath': instance.signaturePath,
    };
