// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceInfoModelImpl _$$DeviceInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceInfoModelImpl(
      platform: json['p'] as String?,
      osVersion: json['o'] as String?,
      model: json['m'] as String?,
      deviceId: json['d'] as String?,
      appVersion: json['a'] as String?,
      ipAddress: json['i'] as String?,
    );

Map<String, dynamic> _$$DeviceInfoModelImplToJson(
        _$DeviceInfoModelImpl instance) =>
    <String, dynamic>{
      'p': instance.platform,
      'o': instance.osVersion,
      'm': instance.model,
      'd': instance.deviceId,
      'a': instance.appVersion,
      'i': instance.ipAddress,
    };
