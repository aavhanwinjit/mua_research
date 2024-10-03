// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_additional_documents_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveAdditionalDocumentsRequestModelImpl
    _$$SaveAdditionalDocumentsRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveAdditionalDocumentsRequestModelImpl(
          agentApplicationId: (json['agentApplicationId'] as num?)?.toInt(),
          isAdditionalDocVerificationCompleted:
              json['isAdditionalDocVerificationCompleted'] as bool?,
          additionalDocumentDetailsModel:
              (json['additionalDocumentDetailsModel'] as List<dynamic>?)
                  ?.map((e) => AdditionalDocumentDetailsModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
        );

Map<String, dynamic> _$$SaveAdditionalDocumentsRequestModelImplToJson(
        _$SaveAdditionalDocumentsRequestModelImpl instance) =>
    <String, dynamic>{
      'agentApplicationId': instance.agentApplicationId,
      'isAdditionalDocVerificationCompleted':
          instance.isAdditionalDocVerificationCompleted,
      'additionalDocumentDetailsModel': instance.additionalDocumentDetailsModel,
    };

_$AdditionalDocumentDetailsModelImpl
    _$$AdditionalDocumentDetailsModelImplFromJson(Map<String, dynamic> json) =>
        _$AdditionalDocumentDetailsModelImpl(
          additionalDoumentTypeId:
              (json['additionalDoumentTypeId'] as num?)?.toInt(),
          uploadDocumentId: (json['uploadDocumentId'] as num?)?.toInt(),
          additionalDocImagePath: json['additionalDocImagePath'] as String?,
        );

Map<String, dynamic> _$$AdditionalDocumentDetailsModelImplToJson(
        _$AdditionalDocumentDetailsModelImpl instance) =>
    <String, dynamic>{
      'additionalDoumentTypeId': instance.additionalDoumentTypeId,
      'uploadDocumentId': instance.uploadDocumentId,
      'additionalDocImagePath': instance.additionalDocImagePath,
    };
