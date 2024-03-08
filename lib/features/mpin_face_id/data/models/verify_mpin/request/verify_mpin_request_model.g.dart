// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_mpin_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyMPINRequestModelImpl _$$VerifyMPINRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyMPINRequestModelImpl(
      isExistingCustomer: json['isExistingCustomer'] as bool?,
      oldMPIN: json['oldMPIN'] as String?,
      newMPIN: json['newMPIN'] as String?,
      confirmNewMPIN: json['confirmNewMPIN'] as String?,
    );

Map<String, dynamic> _$$VerifyMPINRequestModelImplToJson(
        _$VerifyMPINRequestModelImpl instance) =>
    <String, dynamic>{
      'isExistingCustomer': instance.isExistingCustomer,
      'oldMPIN': instance.oldMPIN,
      'newMPIN': instance.newMPIN,
      'confirmNewMPIN': instance.confirmNewMPIN,
    };
