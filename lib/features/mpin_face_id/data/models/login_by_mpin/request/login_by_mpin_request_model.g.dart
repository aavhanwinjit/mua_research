// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_by_mpin_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginbyMpinRequestModelImpl _$$LoginbyMpinRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginbyMpinRequestModelImpl(
      deviceId: json['deviceId'] as String?,
      deviceToken: json['deviceToken'] as String?,
      mPin: json['mPIN'] as String?,
      mobileNo: json['mobileNo'] as String?,
    );

Map<String, dynamic> _$$LoginbyMpinRequestModelImplToJson(
        _$LoginbyMpinRequestModelImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceToken': instance.deviceToken,
      'mPIN': instance.mPin,
      'mobileNo': instance.mobileNo,
    };
