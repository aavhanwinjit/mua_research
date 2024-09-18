// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_non_motor_insurance_documents_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveNonMotorInsuranceDocumentsRequestModelImpl
    _$$SaveNonMotorInsuranceDocumentsRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveNonMotorInsuranceDocumentsRequestModelImpl(
          agentApplicationId: json['agentApplicationId'] as int?,
          isNonMotorDocVerificationCompleted:
              json['isNonMotorDocVerificationCompleted'] as bool?,
          nonMotorDocumentDetailsModel:
              (json['nonMotorInsuranceDocDetailsModel'] as List<dynamic>?)
                  ?.map((e) =>
                      NonMotorDocDetail.fromJson(e as Map<String, dynamic>))
                  .toList(),
        );

Map<String, dynamic> _$$SaveNonMotorInsuranceDocumentsRequestModelImplToJson(
        _$SaveNonMotorInsuranceDocumentsRequestModelImpl instance) =>
    <String, dynamic>{
      'agentApplicationId': instance.agentApplicationId,
      'isNonMotorDocVerificationCompleted':
          instance.isNonMotorDocVerificationCompleted,
      'nonMotorInsuranceDocDetailsModel': instance.nonMotorDocumentDetailsModel,
    };

_$NonMotorDocDetailImpl _$$NonMotorDocDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$NonMotorDocDetailImpl(
      nonMotorDocumentTypeId: json['nonMotorInsuranceDocumentTypeId'] as int?,
      uploadDocumentId: json['uploadDocumentId'] as int?,
      nonMotorDocImagePath: json['nonMotorDocImagePath'] as String?,
    );

Map<String, dynamic> _$$NonMotorDocDetailImplToJson(
        _$NonMotorDocDetailImpl instance) =>
    <String, dynamic>{
      'nonMotorInsuranceDocumentTypeId': instance.nonMotorDocumentTypeId,
      'uploadDocumentId': instance.uploadDocumentId,
      'nonMotorDocImagePath': instance.nonMotorDocImagePath,
    };
