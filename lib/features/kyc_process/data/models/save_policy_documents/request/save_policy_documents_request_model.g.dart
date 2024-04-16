// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_policy_documents_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavePolicyDocumentsRequestModelImpl
    _$$SavePolicyDocumentsRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$SavePolicyDocumentsRequestModelImpl(
          agentApplicationId: json['agentApplicationId'] as int?,
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
      uploadDocumentId: json['uploadDocumentId'] as int?,
      policyDocumentTypeId: json['policyDocumentTypeId'] as int?,
      policyDouImagePath: json['policyDouImagePath'] as String?,
    );

Map<String, dynamic> _$$PolicyDoumentDetailsModelImplToJson(
        _$PolicyDoumentDetailsModelImpl instance) =>
    <String, dynamic>{
      'uploadDocumentId': instance.uploadDocumentId,
      'policyDocumentTypeId': instance.policyDocumentTypeId,
      'policyDouImagePath': instance.policyDouImagePath,
    };
