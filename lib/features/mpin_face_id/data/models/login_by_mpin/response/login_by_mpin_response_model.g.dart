// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_by_mpin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginbyMpinResponseModelImpl _$$LoginbyMpinResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginbyMpinResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : LoginByMpinData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginbyMpinResponseModelImplToJson(
        _$LoginbyMpinResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$LoginByMpinDataImpl _$$LoginByMpinDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginByMpinDataImpl(
      responseBody: json['rb'] == null
          ? null
          : AgentLoginDetailsResponseModel.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$LoginByMpinDataImplToJson(
        _$LoginByMpinDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
