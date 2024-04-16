// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_motor_insurance_documents_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveMotorInsuranceDocumentsRequestModelImpl
    _$$SaveMotorInsuranceDocumentsRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveMotorInsuranceDocumentsRequestModelImpl(
          agentApplicationId: json['agentApplicationId'] as int?,
          isMotorDocVerificationCompleted:
              json['isMotorDocVerificationCompleted'] as bool?,
          motorDocumentDetailsModel: (json['motorDoumentDetailsModel']
                  as List<dynamic>?)
              ?.map((e) => MotorDocDetail.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SaveMotorInsuranceDocumentsRequestModelImplToJson(
        _$SaveMotorInsuranceDocumentsRequestModelImpl instance) =>
    <String, dynamic>{
      'agentApplicationId': instance.agentApplicationId,
      'isMotorDocVerificationCompleted':
          instance.isMotorDocVerificationCompleted,
      'motorDoumentDetailsModel': instance.motorDocumentDetailsModel,
    };

_$MotorDocDetailImpl _$$MotorDocDetailImplFromJson(Map<String, dynamic> json) =>
    _$MotorDocDetailImpl(
      uploadDocumentId: json['uploadDocumentId'] as int?,
      motorDocumentTypeId: json['motorDocumentTypeId'] as int?,
      motorDocImagePath: json['motorDocuImagePath'] as String?,
    );

Map<String, dynamic> _$$MotorDocDetailImplToJson(
        _$MotorDocDetailImpl instance) =>
    <String, dynamic>{
      'uploadDocumentId': instance.uploadDocumentId,
      'motorDocumentTypeId': instance.motorDocumentTypeId,
      'motorDocuImagePath': instance.motorDocImagePath,
    };
