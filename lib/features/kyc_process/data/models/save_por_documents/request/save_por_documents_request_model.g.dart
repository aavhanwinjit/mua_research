// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_por_documents_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavePorDocumentsRequestModelImpl _$$SavePorDocumentsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SavePorDocumentsRequestModelImpl(
      agentApplicationId: (json['agentApplicationId'] as num?)?.toInt(),
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
      porDocumentTypeId: (json['porDocumentTypeId'] as num?)?.toInt(),
      uploadDocumentId: (json['uploadDocumentId'] as num?)?.toInt(),
      lastName: json['lastName'] as String?,
      issueDate: json['issueDate'] as String?,
      porDocImagePath: json['porDocImagePath'] as String?,
    );

Map<String, dynamic> _$$PorDocumentDetailsModelImplToJson(
        _$PorDocumentDetailsModelImpl instance) =>
    <String, dynamic>{
      'porDocumentTypeId': instance.porDocumentTypeId,
      'uploadDocumentId': instance.uploadDocumentId,
      'lastName': instance.lastName,
      'issueDate': instance.issueDate,
      'porDocImagePath': instance.porDocImagePath,
    };
