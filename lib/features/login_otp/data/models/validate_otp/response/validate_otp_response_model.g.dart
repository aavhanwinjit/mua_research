// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateOtpResponseModelImpl _$$ValidateOtpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateOtpResponseModelImpl(
      agentName: json['agentName'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      address: json['address'] as String?,
      companyName: json['companyName'] as String?,
      email: json['email'] as String?,
      designation: json['designation'] as String?,
      agencyName: json['agencyName'] as String?,
    );

Map<String, dynamic> _$$ValidateOtpResponseModelImplToJson(
        _$ValidateOtpResponseModelImpl instance) =>
    <String, dynamic>{
      'agentName': instance.agentName,
      'mobileNumber': instance.mobileNumber,
      'address': instance.address,
      'companyName': instance.companyName,
      'email': instance.email,
      'designation': instance.designation,
      'agencyName': instance.agencyName,
    };
