// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_identity_details_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveIdentityDetailsRequestModelImpl
    _$$SaveIdentityDetailsRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$SaveIdentityDetailsRequestModelImpl(
          applicationRefNo: json['applicationRefNo'] as String?,
          applicantType: json['applicantType'] as String?,
          policyType: json['policyType'] as String?,
          documentCategory: json['documentCategory'] as String?,
          documentSide: json['documentSide'] as String?,
          documentType: json['documentType'] as String?,
          idDocTypeId: json['idDocTypeId'] as int?,
          surname: json['surname'] as String?,
          otherName: json['otherName'] as String?,
          idDocNumber: json['idDocNumber'] as String?,
          idDocFrontImage: json['idDocFrontImage'] as String?,
          idDocBackImage: json['idDocBackImage'] as String?,
          customerId: json['customerId'] as String?,
          fileExtension: json['fileExtension'] as String?,
          quoteNumber: json['quoteNumber'] as String?,
        );

Map<String, dynamic> _$$SaveIdentityDetailsRequestModelImplToJson(
        _$SaveIdentityDetailsRequestModelImpl instance) =>
    <String, dynamic>{
      'applicationRefNo': instance.applicationRefNo,
      'applicantType': instance.applicantType,
      'policyType': instance.policyType,
      'documentCategory': instance.documentCategory,
      'documentSide': instance.documentSide,
      'documentType': instance.documentType,
      'idDocTypeId': instance.idDocTypeId,
      'surname': instance.surname,
      'otherName': instance.otherName,
      'idDocNumber': instance.idDocNumber,
      'idDocFrontImage': instance.idDocFrontImage,
      'idDocBackImage': instance.idDocBackImage,
      'customerId': instance.customerId,
      'fileExtension': instance.fileExtension,
      'quoteNumber': instance.quoteNumber,
    };
