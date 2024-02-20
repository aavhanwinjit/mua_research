// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_by_fp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginByFpResponseModelImpl _$$LoginByFpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginByFpResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : LoginByFPData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginByFpResponseModelImplToJson(
        _$LoginByFpResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$LoginByFPDataImpl _$$LoginByFPDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginByFPDataImpl(
      responseBody: json['rb'] == null
          ? null
          : AgentLoginDetailsResponseModel.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$LoginByFPDataImplToJson(_$LoginByFPDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
