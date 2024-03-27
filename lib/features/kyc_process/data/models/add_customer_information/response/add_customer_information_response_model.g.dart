// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_customer_information_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCustomerInformationResponseModelImpl
    _$$AddCustomerInformationResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$AddCustomerInformationResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : AddCustomerInformationData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AddCustomerInformationResponseModelImplToJson(
        _$AddCustomerInformationResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$AddCustomerInformationDataImpl _$$AddCustomerInformationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCustomerInformationDataImpl(
      responseBody: json['rb'] == null
          ? null
          : AgentApplicationModel.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$AddCustomerInformationDataImplToJson(
        _$AddCustomerInformationDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
