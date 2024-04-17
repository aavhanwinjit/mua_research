// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_signature_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveSignatureRequestModelImpl _$$SaveSignatureRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveSignatureRequestModelImpl(
      fileName: json['fileName'] as String?,
      allowedFileId: json['allowedFileId'] as int?,
      editFileName: json['editFileName'] as bool?,
      fileString: json['fileString'] as String?,
    );

Map<String, dynamic> _$$SaveSignatureRequestModelImplToJson(
        _$SaveSignatureRequestModelImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'allowedFileId': instance.allowedFileId,
      'editFileName': instance.editFileName,
      'fileString': instance.fileString,
    };
