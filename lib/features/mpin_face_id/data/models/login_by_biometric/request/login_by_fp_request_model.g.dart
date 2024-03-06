// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_by_fp_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginByFpRequestModelImpl _$$LoginByFpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginByFpRequestModelImpl(
      deviceId: json['deviceId'] as String?,
      deviceToken: json['deviceToken'] as String?,
      fpDeviceToken: json['fpDeviceToken'] as String?,
      biometricStatus: json['biometricStatus'] as bool?,
      mobileNo: json['mobileNo'] as String?,
    );

Map<String, dynamic> _$$LoginByFpRequestModelImplToJson(
        _$LoginByFpRequestModelImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceToken': instance.deviceToken,
      'fpDeviceToken': instance.fpDeviceToken,
      'biometricStatus': instance.biometricStatus,
      'mobileNo': instance.mobileNo,
    };
