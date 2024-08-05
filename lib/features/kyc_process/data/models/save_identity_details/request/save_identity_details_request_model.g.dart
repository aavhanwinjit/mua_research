// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_identity_details_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveIdentityDetailsRequestModelImpl
    _$$SaveIdentityDetailsRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$SaveIdentityDetailsRequestModelImpl(
          applicationRefNo: json['applicationRefNo'] as String?,
          idDocTypeId: json['idDocTypeId'] as int?,
          surname: json['surname'] as String?,
          otherName: json['otherName'] as String?,
          idDocNumber: json['idDocNumber'] as String?,
          idDocFrontImage: json['idDocFrontImage'] as String?,
          idDocBackImage: json['idDocBackImage'] as String?,
          iDDocFrontUploadedDocumentId:
              json['IDDocFrontUploadedDocumentId'] as String?,
          iDDocBackUploadedDocumentId:
              json['IDDocBackUploadedDocumentId'] as String?,
        );

Map<String, dynamic> _$$SaveIdentityDetailsRequestModelImplToJson(
        _$SaveIdentityDetailsRequestModelImpl instance) =>
    <String, dynamic>{
      'applicationRefNo': instance.applicationRefNo,
      'idDocTypeId': instance.idDocTypeId,
      'surname': instance.surname,
      'otherName': instance.otherName,
      'idDocNumber': instance.idDocNumber,
      'idDocFrontImage': instance.idDocFrontImage,
      'idDocBackImage': instance.idDocBackImage,
      'IDDocFrontUploadedDocumentId': instance.iDDocFrontUploadedDocumentId,
      'IDDocBackUploadedDocumentId': instance.iDDocBackUploadedDocumentId,
    };
