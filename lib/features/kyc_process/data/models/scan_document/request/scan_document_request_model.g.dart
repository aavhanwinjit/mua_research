// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_document_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScanDocumentRequestModelImpl _$$ScanDocumentRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScanDocumentRequestModelImpl(
      applicantType: json['applicantType'] as String?,
      policyType: json['policyType'] as String?,
      documentCategory: json['documentCategory'] as String?,
      documentType: json['documentType'] as String?,
      documentSide: json['documentSide'] as String?,
      customerId: json['customerId'] as String?,
      policyNumber: json['policyNumber'] as String?,
      fileExtension: json['fileExtension'] as String?,
      nicNumber: json['nicNumber'] as String?,
      passportNumber: json['passportNumber'] as String?,
      quoteNumber: json['quoteNumber'] as String?,
      verificationData: json['verificationData'] == null
          ? null
          : VerificationData.fromJson(
              json['verificationData'] as Map<String, dynamic>),
      base64Doc: json['base64Doc'] as String?,
    );

Map<String, dynamic> _$$ScanDocumentRequestModelImplToJson(
        _$ScanDocumentRequestModelImpl instance) =>
    <String, dynamic>{
      'applicantType': instance.applicantType,
      'policyType': instance.policyType,
      'documentCategory': instance.documentCategory,
      'documentType': instance.documentType,
      'documentSide': instance.documentSide,
      'customerId': instance.customerId,
      'policyNumber': instance.policyNumber,
      'fileExtension': instance.fileExtension,
      'nicNumber': instance.nicNumber,
      'passportNumber': instance.passportNumber,
      'quoteNumber': instance.quoteNumber,
      'verificationData': instance.verificationData,
      'base64Doc': instance.base64Doc,
    };

_$VerificationDataImpl _$$VerificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationDataImpl(
      firstName: json['firstName'] as String?,
      surname: json['surname'] as String?,
      idNumber: json['idNumber'] as String?,
      billDate: json['billDate'] as String?,
      registrationMark: json['registration_Mark'] as String?,
      issueDate: json['issueDate'] as String?,
    );

Map<String, dynamic> _$$VerificationDataImplToJson(
        _$VerificationDataImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'surname': instance.surname,
      'idNumber': instance.idNumber,
      'billDate': instance.billDate,
      'registration_Mark': instance.registrationMark,
      'issueDate': instance.issueDate,
    };
