// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_document_category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDocumentCategoryResponseModelImpl
    _$$GetDocumentCategoryResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetDocumentCategoryResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : GetDocumentCategoryData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetDocumentCategoryResponseModelImplToJson(
        _$GetDocumentCategoryResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$GetDocumentCategoryDataImpl _$$GetDocumentCategoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDocumentCategoryDataImpl(
      responseBody: (json['rb'] as List<dynamic>?)
          ?.map(
              (e) => DocumentCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$GetDocumentCategoryDataImplToJson(
        _$GetDocumentCategoryDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$DocumentCategoryModelImpl _$$DocumentCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentCategoryModelImpl(
      documentCategoryId: json['documentCategoryId'] as int?,
      documentCategory: json['documentCategory'] as String?,
      kycTypeId: json['kycTypeId'] as int?,
    );

Map<String, dynamic> _$$DocumentCategoryModelImplToJson(
        _$DocumentCategoryModelImpl instance) =>
    <String, dynamic>{
      'documentCategoryId': instance.documentCategoryId,
      'documentCategory': instance.documentCategory,
      'kycTypeId': instance.kycTypeId,
    };
