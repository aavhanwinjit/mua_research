// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_address_details_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveAddressDetailsRequestModelImpl
    _$$SaveAddressDetailsRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$SaveAddressDetailsRequestModelImpl(
          applicationRefNo: json['applicationRefNo'] as String?,
          documentTypeId: json['documentTypeId'] as int?,
          docImagePath: json['docImagePath'] as String?,
          docSurname: json['docSurname'] as String?,
          docOtherName: json['docOtherName'] as String?,
          docBillDate: json['docBillDate'] == null
              ? null
              : DateTime.parse(json['docBillDate'] as String),
          docAddress: json['docAddress'] as String?,
          uploadedDocumentId: json['uploadedDocumentId'] as int?,
          isAddressVerificationCompleted:
              json['isAddressVerificationCompleted'] as bool?,
          porRequired: json['porRequired'] as bool?,
        );

Map<String, dynamic> _$$SaveAddressDetailsRequestModelImplToJson(
        _$SaveAddressDetailsRequestModelImpl instance) =>
    <String, dynamic>{
      'applicationRefNo': instance.applicationRefNo,
      'documentTypeId': instance.documentTypeId,
      'docImagePath': instance.docImagePath,
      'docSurname': instance.docSurname,
      'docOtherName': instance.docOtherName,
      'docBillDate': instance.docBillDate?.toIso8601String(),
      'docAddress': instance.docAddress,
      'uploadedDocumentId': instance.uploadedDocumentId,
      'isAddressVerificationCompleted': instance.isAddressVerificationCompleted,
      'porRequired': instance.porRequired,
    };
