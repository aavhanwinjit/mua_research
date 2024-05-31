// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_customer_information_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCustomerInformationRequestModelImpl
    _$$AddCustomerInformationRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$AddCustomerInformationRequestModelImpl(
          mobileNumber: json['mobileNumber'] as String?,
          emailId: json['emailId'] as String?,
          maritalStatus: json['maritalStatus'] as String?,
          nationality: json['nationality'] as String?,
          quoteNumber: json['quoteNumber'] as String?,
          kycTypeId: json['kycTypeId'] as int?,
          policyNumber: json['policyNumber'] as String?,
        );

Map<String, dynamic> _$$AddCustomerInformationRequestModelImplToJson(
        _$AddCustomerInformationRequestModelImpl instance) =>
    <String, dynamic>{
      'mobileNumber': instance.mobileNumber,
      'emailId': instance.emailId,
      'maritalStatus': instance.maritalStatus,
      'nationality': instance.nationality,
      'quoteNumber': instance.quoteNumber,
      'kycTypeId': instance.kycTypeId,
      'policyNumber': instance.policyNumber,
    };
