// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_details_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaunchDetailsRequestImpl _$$LaunchDetailsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LaunchDetailsRequestImpl(
      rootedDevice: json['rootedDevice'] as bool,
      deviceToken: json['deviceToken'] as String,
    );

Map<String, dynamic> _$$LaunchDetailsRequestImplToJson(
        _$LaunchDetailsRequestImpl instance) =>
    <String, dynamic>{
      'rootedDevice': instance.rootedDevice,
      'deviceToken': instance.deviceToken,
    };
