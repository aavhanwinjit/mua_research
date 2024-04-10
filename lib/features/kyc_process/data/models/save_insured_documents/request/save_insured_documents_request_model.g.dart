// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_insured_documents_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveInsuredDocumentsRequestModelImpl
    _$$SaveInsuredDocumentsRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveInsuredDocumentsRequestModelImpl(
          agentApplicationId: json['agentApplicationId'] as int?,
          isPorDocVerificationCompleted:
              json['isPORDocVerificationCompleted'] as bool?,
          insuredDoumentDetailsModel:
              (json['insuredDoumentDetailsModel'] as List<dynamic>?)
                  ?.map((e) => InsuredDoumentDetailsModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
        );

Map<String, dynamic> _$$SaveInsuredDocumentsRequestModelImplToJson(
        _$SaveInsuredDocumentsRequestModelImpl instance) =>
    <String, dynamic>{
      'agentApplicationId': instance.agentApplicationId,
      'isPORDocVerificationCompleted': instance.isPorDocVerificationCompleted,
      'insuredDoumentDetailsModel': instance.insuredDoumentDetailsModel,
    };

_$InsuredDoumentDetailsModelImpl _$$InsuredDoumentDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InsuredDoumentDetailsModelImpl(
      insuredDocumentTypeId: json['insuredDocumentTypeId'] as int?,
      uploadDocumentId: json['uploadDocumentId'] as int?,
      lastName: json['lastName'] as String?,
      issueDate: json['issueDate'] == null
          ? null
          : DateTime.parse(json['issueDate'] as String),
      insuredDouImagePath: json['insuredDouImagePath'] as String?,
    );

Map<String, dynamic> _$$InsuredDoumentDetailsModelImplToJson(
        _$InsuredDoumentDetailsModelImpl instance) =>
    <String, dynamic>{
      'insuredDocumentTypeId': instance.insuredDocumentTypeId,
      'uploadDocumentId': instance.uploadDocumentId,
      'lastName': instance.lastName,
      'issueDate': instance.issueDate?.toIso8601String(),
      'insuredDouImagePath': instance.insuredDouImagePath,
    };
