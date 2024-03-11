// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_file_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveFileRequestModelImpl _$$SaveFileRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveFileRequestModelImpl(
      fileName: json['fileName'] as String?,
      allowedFileId: json['allowedFileId'] as int?,
      fileString: json['fileString'] as String?,
    );

Map<String, dynamic> _$$SaveFileRequestModelImplToJson(
        _$SaveFileRequestModelImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'allowedFileId': instance.allowedFileId,
      'fileString': instance.fileString,
    };
