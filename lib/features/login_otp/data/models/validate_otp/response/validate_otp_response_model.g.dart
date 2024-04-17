// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateOtpResponseModelImpl _$$ValidateOtpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateOtpResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : ValidateOTPData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ValidateOtpResponseModelImplToJson(
        _$ValidateOtpResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$ValidateOTPDataImpl _$$ValidateOTPDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateOTPDataImpl(
      responseBody: json['rb'] == null
          ? null
          : ValidateOTPResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$ValidateOTPDataImplToJson(
        _$ValidateOTPDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$ValidateOTPResponseBodyImpl _$$ValidateOTPResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateOTPResponseBodyImpl(
      agentName: json['agentName'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      address: json['address'] as String?,
      companyName: json['companyName'],
      emailId: json['emailId'] as String?,
      designation: json['designation'],
      agencyName: json['agencyName'] as String?,
      companies: (json['companies'] as List<dynamic>?)
          ?.map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      tokenData: json['tokenData'] == null
          ? null
          : TokenData.fromJson(json['tokenData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ValidateOTPResponseBodyImplToJson(
        _$ValidateOTPResponseBodyImpl instance) =>
    <String, dynamic>{
      'agentName': instance.agentName,
      'mobileNumber': instance.mobileNumber,
      'address': instance.address,
      'companyName': instance.companyName,
      'emailId': instance.emailId,
      'designation': instance.designation,
      'agencyName': instance.agencyName,
      'companies': instance.companies,
      'tokenData': instance.tokenData,
    };
