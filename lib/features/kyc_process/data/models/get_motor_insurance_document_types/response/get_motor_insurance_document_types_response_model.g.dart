// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_motor_insurance_document_types_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMotorInsuranceDocumentTypesResponseModelImpl
    _$$GetMotorInsuranceDocumentTypesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetMotorInsuranceDocumentTypesResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : GetMotorInsuranceDocumentTypesData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetMotorInsuranceDocumentTypesResponseModelImplToJson(
        _$GetMotorInsuranceDocumentTypesResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$GetMotorInsuranceDocumentTypesDataImpl
    _$$GetMotorInsuranceDocumentTypesDataImplFromJson(
            Map<String, dynamic> json) =>
        _$GetMotorInsuranceDocumentTypesDataImpl(
          responseBody: (json['rb'] as List<dynamic>?)
              ?.map((e) => MotorInsuranceDocumentTypeModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          checkSum: json['checkSum'] as String?,
        );

Map<String, dynamic> _$$GetMotorInsuranceDocumentTypesDataImplToJson(
        _$GetMotorInsuranceDocumentTypesDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$MotorInsuranceDocumentTypeModelImpl
    _$$MotorInsuranceDocumentTypeModelImplFromJson(Map<String, dynamic> json) =>
        _$MotorInsuranceDocumentTypeModelImpl(
          mDocumentTypeId: json['motorInsuranceDocumentTypeId'] as int?,
          motorInsuranceDocType: json['motorInsuranceDocType'] as String?,
          documentCode: json['documentCode'] as String?,
        );

Map<String, dynamic> _$$MotorInsuranceDocumentTypeModelImplToJson(
        _$MotorInsuranceDocumentTypeModelImpl instance) =>
    <String, dynamic>{
      'motorInsuranceDocumentTypeId': instance.mDocumentTypeId,
      'motorInsuranceDocType': instance.motorInsuranceDocType,
      'documentCode': instance.documentCode,
    };
