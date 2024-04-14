// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentApplicationModelImpl _$$AgentApplicationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentApplicationModelImpl(
      agentApplicationId: json['agentApplicationId'] as int?,
      applicationRefNo: json['applicationRefNo'] as String?,
      agentId: json['agentId'] as int?,
      applicationStatus: json['applicationStatus'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      emailId: json['emailId'] as String?,
      maritalStatus: json['maritalStatus'] as String?,
      nationality: json['nationality'] as String?,
      kycTypeId: json['kycTypeId'] as int?,
      quoteNumber: json['quoteNumber'] as String?,
      policyNumber: json['policyNumber'] as String?,
      idDocumentTypeId: json['idDocumentTypeId'],
      idDocFrontImagePath: json['idDocFrontImagePath'],
      idDocBackImagePath: json['idDocBackImagePath'],
      idDocSurname: json['idDocSurname'],
      idDocOtherName: json['idDocOtherName'],
      idDocNumber: json['idDocNumber'],
      idDocPolicyNumber: json['idDocPolicyNumber'],
      isIdVerificationCompleted: json['isIDVerificationCompleted'] as bool?,
      addressDocumentTypeId: json['addressDocumentTypeId'],
      addressDocImagePath: json['addressDocImagePath'],
      addressDocSurname: json['addressDocSurname'],
      addressDocOtherName: json['addressDocOtherName'],
      addressDocBillDate: json['addressDocBillDate'],
      addressDocAddress: json['addressDocAddress'],
      isAddressVerificationCompleted:
          json['isAddressVerificationCompleted'] as bool?,
      porRequired: json['porRequired'] as bool?,
      insuredDocumentTypeId1: json['insuredDocumentTypeId1'],
      insuredDocumentTypeId2: json['insuredDocumentTypeId2'],
      insuredDocumentTypeId3: json['insuredDocumentTypeId3'],
      insuredDocLastName: json['insuredDocLastName'],
      insureDocIssueDate: json['insureDocIssueDate'],
      insuredDocImagePath1: json['insuredDocImagePath1'],
      insuredDocImagePath2: json['insuredDocImagePath2'],
      insuredDocImagePath3: json['insuredDocImagePath3'],
      isPorDocVerificationCompleted:
          json['isPORDocVerificationCompleted'] as bool?,
      policyDocumentTypeId: json['policyDocumentTypeId'],
      policyDocImagePath: json['policyDocImagePath'],
      isPolicyDocVerificationCompleted:
          json['isPolicyDocVerificationCompleted'] as bool?,
      motorInsuranceDocumentTypeId: json['motorInsuranceDocumentTypeId'],
      motorDocImagePath: json['motorDocuImagePath'],
      isMotorDocVerificationCompleted:
          json['isMotorDocVerificationCompleted'] as bool?,
      additionalDocumentTypeId: json['additionalDocumentTypeId'],
      additionalDocImagePath: json['additionalDocImagePath'],
      isAdditionalDocVerificationCompleted:
          json['isAdditionalDocVerificationCompleted'] as bool?,
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'],
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'],
    );

Map<String, dynamic> _$$AgentApplicationModelImplToJson(
        _$AgentApplicationModelImpl instance) =>
    <String, dynamic>{
      'agentApplicationId': instance.agentApplicationId,
      'applicationRefNo': instance.applicationRefNo,
      'agentId': instance.agentId,
      'applicationStatus': instance.applicationStatus,
      'mobileNumber': instance.mobileNumber,
      'emailId': instance.emailId,
      'maritalStatus': instance.maritalStatus,
      'nationality': instance.nationality,
      'kycTypeId': instance.kycTypeId,
      'quoteNumber': instance.quoteNumber,
      'policyNumber': instance.policyNumber,
      'idDocumentTypeId': instance.idDocumentTypeId,
      'idDocFrontImagePath': instance.idDocFrontImagePath,
      'idDocBackImagePath': instance.idDocBackImagePath,
      'idDocSurname': instance.idDocSurname,
      'idDocOtherName': instance.idDocOtherName,
      'idDocNumber': instance.idDocNumber,
      'idDocPolicyNumber': instance.idDocPolicyNumber,
      'isIDVerificationCompleted': instance.isIdVerificationCompleted,
      'addressDocumentTypeId': instance.addressDocumentTypeId,
      'addressDocImagePath': instance.addressDocImagePath,
      'addressDocSurname': instance.addressDocSurname,
      'addressDocOtherName': instance.addressDocOtherName,
      'addressDocBillDate': instance.addressDocBillDate,
      'addressDocAddress': instance.addressDocAddress,
      'isAddressVerificationCompleted': instance.isAddressVerificationCompleted,
      'porRequired': instance.porRequired,
      'insuredDocumentTypeId1': instance.insuredDocumentTypeId1,
      'insuredDocumentTypeId2': instance.insuredDocumentTypeId2,
      'insuredDocumentTypeId3': instance.insuredDocumentTypeId3,
      'insuredDocLastName': instance.insuredDocLastName,
      'insureDocIssueDate': instance.insureDocIssueDate,
      'insuredDocImagePath1': instance.insuredDocImagePath1,
      'insuredDocImagePath2': instance.insuredDocImagePath2,
      'insuredDocImagePath3': instance.insuredDocImagePath3,
      'isPORDocVerificationCompleted': instance.isPorDocVerificationCompleted,
      'policyDocumentTypeId': instance.policyDocumentTypeId,
      'policyDocImagePath': instance.policyDocImagePath,
      'isPolicyDocVerificationCompleted':
          instance.isPolicyDocVerificationCompleted,
      'motorInsuranceDocumentTypeId': instance.motorInsuranceDocumentTypeId,
      'motorDocuImagePath': instance.motorDocImagePath,
      'isMotorDocVerificationCompleted':
          instance.isMotorDocVerificationCompleted,
      'additionalDocumentTypeId': instance.additionalDocumentTypeId,
      'additionalDocImagePath': instance.additionalDocImagePath,
      'isAdditionalDocVerificationCompleted':
          instance.isAdditionalDocVerificationCompleted,
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
    };
