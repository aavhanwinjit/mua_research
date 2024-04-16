// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_non_motor_insurance_documents_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveNonMotorInsuranceDocumentsResponseModelImpl
    _$$SaveNonMotorInsuranceDocumentsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveNonMotorInsuranceDocumentsResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : SaveNonMotorInsuranceDocumentsData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SaveNonMotorInsuranceDocumentsResponseModelImplToJson(
        _$SaveNonMotorInsuranceDocumentsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SaveNonMotorInsuranceDocumentsDataImpl
    _$$SaveNonMotorInsuranceDocumentsDataImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveNonMotorInsuranceDocumentsDataImpl(
          responseBody: json['rb'] == null
              ? null
              : AgentApplicationModel.fromJson(
                  json['rb'] as Map<String, dynamic>),
          checkSum: json['checkSum'] as String?,
        );

Map<String, dynamic> _$$SaveNonMotorInsuranceDocumentsDataImplToJson(
        _$SaveNonMotorInsuranceDocumentsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
