// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogoutResponseModelImpl _$$LogoutResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LogoutResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : LogoutData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LogoutResponseModelImplToJson(
        _$LogoutResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$LogoutDataImpl _$$LogoutDataImplFromJson(Map<String, dynamic> json) =>
    _$LogoutDataImpl(
      responseBody: json['rb'] == null
          ? null
          : LogoutResponseBody.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$LogoutDataImplToJson(_$LogoutDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$LogoutResponseBodyImpl _$$LogoutResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$LogoutResponseBodyImpl();

Map<String, dynamic> _$$LogoutResponseBodyImplToJson(
        _$LogoutResponseBodyImpl instance) =>
    <String, dynamic>{};
