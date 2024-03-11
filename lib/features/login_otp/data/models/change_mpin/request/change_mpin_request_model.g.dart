// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_mpin_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeMPINRequestModelImpl _$$ChangeMPINRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeMPINRequestModelImpl(
      mPIN: MPIN.fromJson(json['mPIN'] as Map<String, dynamic>),
      otp: OTP.fromJson(json['otp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChangeMPINRequestModelImplToJson(
        _$ChangeMPINRequestModelImpl instance) =>
    <String, dynamic>{
      'mPIN': instance.mPIN,
      'otp': instance.otp,
    };

_$MPINImpl _$$MPINImplFromJson(Map<String, dynamic> json) => _$MPINImpl(
      oldMPIN: json['oldMPIN'] as String,
      newMPIN: json['newMPIN'] as String,
      confirmNewMPIN: json['confirmNewMPIN'] as String,
    );

Map<String, dynamic> _$$MPINImplToJson(_$MPINImpl instance) =>
    <String, dynamic>{
      'oldMPIN': instance.oldMPIN,
      'newMPIN': instance.newMPIN,
      'confirmNewMPIN': instance.confirmNewMPIN,
    };

_$OTPImpl _$$OTPImplFromJson(Map<String, dynamic> json) => _$OTPImpl(
      refCode: json['refCode'] as String,
      otpNumber: json['otpNumber'] as String,
    );

Map<String, dynamic> _$$OTPImplToJson(_$OTPImpl instance) => <String, dynamic>{
      'refCode': instance.refCode,
      'otpNumber': instance.otpNumber,
    };
