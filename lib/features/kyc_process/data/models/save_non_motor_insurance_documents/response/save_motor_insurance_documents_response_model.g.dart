// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_motor_insurance_documents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveMotorInsuranceDocumentsResponseModelImpl
    _$$SaveMotorInsuranceDocumentsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveMotorInsuranceDocumentsResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : SaveMotorInsuranceDocumentsData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SaveMotorInsuranceDocumentsResponseModelImplToJson(
        _$SaveMotorInsuranceDocumentsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SaveMotorInsuranceDocumentsDataImpl
    _$$SaveMotorInsuranceDocumentsDataImplFromJson(Map<String, dynamic> json) =>
        _$SaveMotorInsuranceDocumentsDataImpl(
          responseBody: json['rb'] == null
              ? null
              : AgentApplicationModel.fromJson(
                  json['rb'] as Map<String, dynamic>),
          checkSum: json['checkSum'] as String?,
        );

Map<String, dynamic> _$$SaveMotorInsuranceDocumentsDataImplToJson(
        _$SaveMotorInsuranceDocumentsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
