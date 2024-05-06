// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_device_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterDeviceResponseModelImpl _$$RegisterDeviceResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterDeviceResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : RegisterDeviceData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterDeviceResponseModelImplToJson(
        _$RegisterDeviceResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$RegisterDeviceDataImpl _$$RegisterDeviceDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterDeviceDataImpl(
      responseBody: json['rb'] == null
          ? null
          : RegisterDeviceResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$RegisterDeviceDataImplToJson(
        _$RegisterDeviceDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$RegisterDeviceResponseBodyImpl _$$RegisterDeviceResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterDeviceResponseBodyImpl(
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'] as int?,
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
      appDeviceId: json['appDeviceId'] as int?,
      channelId: json['channelId'] as String?,
      loginId: json['loginId'] as int?,
      deviceId: json['deviceId'] as String?,
      deviceToken: json['deviceToken'] as String?,
      modelName: json['modelName'] as String?,
      platform: json['platform'] as String?,
      osVersion: json['osVersion'] as String?,
      deregistered: json['deregistered'] as bool?,
      inactive: json['inactive'] as bool?,
      blockedTill: json['blockedTill'] == null
          ? null
          : DateTime.parse(json['blockedTill'] as String),
      wrongMpinAttempts: json['wrongMPINAttempts'] as int?,
      isFpLogin: json['isFPLogin'] as bool?,
      fingerPrintToken: json['fingerPrintToken'] as String?,
      fpBlockedTill: json['fpBlockedTill'] == null
          ? null
          : DateTime.parse(json['fpBlockedTill'] as String),
      wrongFpAttempts: json['wrongFPAttempts'] as int?,
      lastLogin: json['lastLogin'] == null
          ? null
          : DateTime.parse(json['lastLogin'] as String),
    );

Map<String, dynamic> _$$RegisterDeviceResponseBodyImplToJson(
        _$RegisterDeviceResponseBodyImpl instance) =>
    <String, dynamic>{
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
      'appDeviceId': instance.appDeviceId,
      'channelId': instance.channelId,
      'loginId': instance.loginId,
      'deviceId': instance.deviceId,
      'deviceToken': instance.deviceToken,
      'modelName': instance.modelName,
      'platform': instance.platform,
      'osVersion': instance.osVersion,
      'deregistered': instance.deregistered,
      'inactive': instance.inactive,
      'blockedTill': instance.blockedTill?.toIso8601String(),
      'wrongMPINAttempts': instance.wrongMpinAttempts,
      'isFPLogin': instance.isFpLogin,
      'fingerPrintToken': instance.fingerPrintToken,
      'fpBlockedTill': instance.fpBlockedTill?.toIso8601String(),
      'wrongFPAttempts': instance.wrongFpAttempts,
      'lastLogin': instance.lastLogin?.toIso8601String(),
    };
