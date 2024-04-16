// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_non_motor_insurance_document_types_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNonMotorInsuranceDocumentTypesResponseModelImpl
    _$$GetNonMotorInsuranceDocumentTypesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetNonMotorInsuranceDocumentTypesResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : GetNonMotorInsuranceDocumentTypesData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$GetNonMotorInsuranceDocumentTypesResponseModelImplToJson(
            _$GetNonMotorInsuranceDocumentTypesResponseModelImpl instance) =>
        <String, dynamic>{
          'h': instance.header,
          'b': instance.body,
          's': instance.status,
        };

_$GetNonMotorInsuranceDocumentTypesDataImpl
    _$$GetNonMotorInsuranceDocumentTypesDataImplFromJson(
            Map<String, dynamic> json) =>
        _$GetNonMotorInsuranceDocumentTypesDataImpl(
          responseBody: (json['rb'] as List<dynamic>?)
              ?.map((e) => NonMotorInsuranceDocumentTypeModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          checkSum: json['checkSum'] as String?,
        );

Map<String, dynamic> _$$GetNonMotorInsuranceDocumentTypesDataImplToJson(
        _$GetNonMotorInsuranceDocumentTypesDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$NonMotorInsuranceDocumentTypeModelImpl
    _$$NonMotorInsuranceDocumentTypeModelImplFromJson(
            Map<String, dynamic> json) =>
        _$NonMotorInsuranceDocumentTypeModelImpl(
          mDocumentTypeId: json['nonMotorInsuranceDocumentTypeId'] as int?,
          nonMotorInsuranceDocType: json['nonMotorInsuranceDocType'] as String?,
          documentCode: json['documentCode'] as String?,
        );

Map<String, dynamic> _$$NonMotorInsuranceDocumentTypeModelImplToJson(
        _$NonMotorInsuranceDocumentTypeModelImpl instance) =>
    <String, dynamic>{
      'nonMotorInsuranceDocumentTypeId': instance.mDocumentTypeId,
      'nonMotorInsuranceDocType': instance.nonMotorInsuranceDocType,
      'documentCode': instance.documentCode,
    };
