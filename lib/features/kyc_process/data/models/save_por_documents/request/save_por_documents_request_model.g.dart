// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_por_documents_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavePorDocumentsRequestModelImpl _$$SavePorDocumentsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SavePorDocumentsRequestModelImpl(
      agentApplicationId: json['agentApplicationId'] as int?,
      isPorDocVerificationCompleted:
          json['isPORDocVerificationCompleted'] as bool?,
      porDocumentDetailsModel:
          (json['porDocumentDetailsModel'] as List<dynamic>?)
              ?.map((e) =>
                  PorDocumentDetailsModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$SavePorDocumentsRequestModelImplToJson(
        _$SavePorDocumentsRequestModelImpl instance) =>
    <String, dynamic>{
      'agentApplicationId': instance.agentApplicationId,
      'isPORDocVerificationCompleted': instance.isPorDocVerificationCompleted,
      'porDocumentDetailsModel': instance.porDocumentDetailsModel,
    };

_$PorDocumentDetailsModelImpl _$$PorDocumentDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PorDocumentDetailsModelImpl(
      porDocumentTypeId: json['porDocumentTypeId'] as int?,
      uploadDocumentId: json['uploadDocumentId'] as int?,
      lastName: json['lastName'] as String?,
      issueDate: json['issueDate'] == null
          ? null
          : DateTime.parse(json['issueDate'] as String),
      porDocImagePath: json['porDocImagePath'] as String?,
    );

Map<String, dynamic> _$$PorDocumentDetailsModelImplToJson(
        _$PorDocumentDetailsModelImpl instance) =>
    <String, dynamic>{
      'porDocumentTypeId': instance.porDocumentTypeId,
      'uploadDocumentId': instance.uploadDocumentId,
      'lastName': instance.lastName,
      'issueDate': instance.issueDate?.toIso8601String(),
      'porDocImagePath': instance.porDocImagePath,
    };
