// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateOtpRequestModelImpl _$$ValidateOtpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateOtpRequestModelImpl(
      preValidationModel: json['preValidationModel'] == null
          ? null
          : PreValidationModel.fromJson(
              json['preValidationModel'] as Map<String, dynamic>),
      mobileNumber: json['mobileNumber'] as String?,
    );

Map<String, dynamic> _$$ValidateOtpRequestModelImplToJson(
        _$ValidateOtpRequestModelImpl instance) =>
    <String, dynamic>{
      'preValidationModel': instance.preValidationModel,
      'mobileNumber': instance.mobileNumber,
    };

_$PreValidationModelImpl _$$PreValidationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PreValidationModelImpl(
      validationType: json['validationType'] as String?,
      refCode: json['refCode'] as String?,
      otpNumber: json['otpNumber'] as String?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$$PreValidationModelImplToJson(
        _$PreValidationModelImpl instance) =>
    <String, dynamic>{
      'validationType': instance.validationType,
      'refCode': instance.refCode,
      'otpNumber': instance.otpNumber,
      'key': instance.key,
    };
