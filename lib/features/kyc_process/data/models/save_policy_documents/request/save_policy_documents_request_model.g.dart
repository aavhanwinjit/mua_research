// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_policy_documents_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavePolicyDocumentsRequestModelImpl
    _$$SavePolicyDocumentsRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$SavePolicyDocumentsRequestModelImpl(
          agentApplicationId: (json['agentApplicationId'] as num?)?.toInt(),
          isPolicyDocVerificationCompleted:
              json['isPolicyDocVerificationCompleted'] as bool?,
          policyDoumentDetailsModel: (json['policyDoumentDetailsModel']
                  as List<dynamic>?)
              ?.map((e) =>
                  PolicyDoumentDetailsModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SavePolicyDocumentsRequestModelImplToJson(
        _$SavePolicyDocumentsRequestModelImpl instance) =>
    <String, dynamic>{
      'agentApplicationId': instance.agentApplicationId,
      'isPolicyDocVerificationCompleted':
          instance.isPolicyDocVerificationCompleted,
      'policyDoumentDetailsModel': instance.policyDoumentDetailsModel,
    };

_$PolicyDoumentDetailsModelImpl _$$PolicyDoumentDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PolicyDoumentDetailsModelImpl(
      policyDocumentTypeId: (json['policyDocumentTypeId'] as num?)?.toInt(),
      uploadDocumentId: (json['uploadDocumentId'] as num?)?.toInt(),
      policyDocImagePath: json['policyDocImagePath'] as String?,
    );

Map<String, dynamic> _$$PolicyDoumentDetailsModelImplToJson(
        _$PolicyDoumentDetailsModelImpl instance) =>
    <String, dynamic>{
      'policyDocumentTypeId': instance.policyDocumentTypeId,
      'uploadDocumentId': instance.uploadDocumentId,
      'policyDocImagePath': instance.policyDocImagePath,
    };
