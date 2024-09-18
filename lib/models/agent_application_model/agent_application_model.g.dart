// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentApplicationModelImpl _$$AgentApplicationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentApplicationModelImpl(
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'] as int?,
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
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
      idDocumentTypeId: json['idDocumentTypeId'] as int?,
      idDocFrontImagePath: json['idDocFrontImagePath'] as String?,
      idDocBackImagePath: json['idDocBackImagePath'] as String?,
      idDocSurname: json['idDocSurname'] as String?,
      idDocOtherName: json['idDocOtherName'] as String?,
      idDocNumber: json['idDocNumber'] as String?,
      idDocPolicyNumber: json['idDocPolicyNumber'] as String?,
      idDocFrontUploadedDocumentId:
          json['idDocFrontUploadedDocumentId'] as int?,
      idDocBackUploadedDocumentId: json['idDocBackUploadedDocumentId'] as int?,
      isIdVerificationCompleted: json['isIDVerificationCompleted'] as bool?,
      addressDocumentTypeId: json['addressDocumentTypeId'] as int?,
      addressDocImagePath: json['addressDocImagePath'] as String?,
      addressDocSurname: json['addressDocSurname'] as String?,
      addressDocOtherName: json['addressDocOtherName'] as String?,
      addressDocBillDate: json['addressDocBillDate'] == null
          ? null
          : DateTime.parse(json['addressDocBillDate'] as String),
      addressDocAddress: json['addressDocAddress'] as String?,
      addressDocUploadedDocumentId:
          json['addressDocUploadedDocumentId'] as int?,
      isAddressVerificationCompleted:
          json['isAddressVerificationCompleted'] as bool?,
      porRequired: json['porRequired'] as bool?,
      isPorDocVerificationCompleted:
          json['isPORDocVerificationCompleted'] as bool?,
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
      isNonMotorDocVerificationCompleted:
          json['isNonMotorDocVerificationCompleted'] as bool?,
      addressDocumentTypes: json['addressDocumentTypes'] == null
          ? null
          : AddressDocumentTypes.fromJson(
              json['addressDocumentTypes'] as Map<String, dynamic>),
      porDocumentDetails: (json['porDocumentDetails'] as List<dynamic>?)
          ?.map((e) => PorDocumentDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      policyDocumentDetails: (json['policyDocumentDetails'] as List<dynamic>?)
          ?.map((e) => PolicyDocumentDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalDoumentDetails:
          (json['additionalDoumentDetails'] as List<dynamic>?)
              ?.map((e) =>
                  AdditionalDoumentDetail.fromJson(e as Map<String, dynamic>))
              .toList(),
      motorInsuranceDocumentDetails: (json['motorInsuranceDocumentDetails']
              as List<dynamic>?)
          ?.map((e) =>
              MotorInsuranceDocumentDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      nonMotorInsuranceDocumentDetails:
          (json['nonMotorInsuranceDocumentDetails'] as List<dynamic>?)
              ?.map((e) => NonMotorInsuranceDocumentDetail.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$AgentApplicationModelImplToJson(
        _$AgentApplicationModelImpl instance) =>
    <String, dynamic>{
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
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
      'idDocFrontUploadedDocumentId': instance.idDocFrontUploadedDocumentId,
      'idDocBackUploadedDocumentId': instance.idDocBackUploadedDocumentId,
      'isIDVerificationCompleted': instance.isIdVerificationCompleted,
      'addressDocumentTypeId': instance.addressDocumentTypeId,
      'addressDocImagePath': instance.addressDocImagePath,
      'addressDocSurname': instance.addressDocSurname,
      'addressDocOtherName': instance.addressDocOtherName,
      'addressDocBillDate': instance.addressDocBillDate?.toIso8601String(),
      'addressDocAddress': instance.addressDocAddress,
      'addressDocUploadedDocumentId': instance.addressDocUploadedDocumentId,
      'isAddressVerificationCompleted': instance.isAddressVerificationCompleted,
      'porRequired': instance.porRequired,
      'isPORDocVerificationCompleted': instance.isPorDocVerificationCompleted,
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
      'isNonMotorDocVerificationCompleted':
          instance.isNonMotorDocVerificationCompleted,
      'addressDocumentTypes': instance.addressDocumentTypes,
      'porDocumentDetails': instance.porDocumentDetails,
      'policyDocumentDetails': instance.policyDocumentDetails,
      'additionalDoumentDetails': instance.additionalDoumentDetails,
      'motorInsuranceDocumentDetails': instance.motorInsuranceDocumentDetails,
      'nonMotorInsuranceDocumentDetails':
          instance.nonMotorInsuranceDocumentDetails,
    };

_$AdditionalDoumentDetailImpl _$$AdditionalDoumentDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalDoumentDetailImpl(
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'] as int?,
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
      additionalDocumentDetailId: json['additionalDocumentDetailId'] as int?,
      agentApplicationId: json['agentApplicationId'] as int?,
      uploadDocumentId: json['uploadDocumentId'] as int?,
      additionalDocumentTypeId: json['additionalDocumentTypeId'] as int?,
      additionalDocImagePath: json['additionalDocImagePath'] as String?,
    );

Map<String, dynamic> _$$AdditionalDoumentDetailImplToJson(
        _$AdditionalDoumentDetailImpl instance) =>
    <String, dynamic>{
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
      'additionalDocumentDetailId': instance.additionalDocumentDetailId,
      'agentApplicationId': instance.agentApplicationId,
      'uploadDocumentId': instance.uploadDocumentId,
      'additionalDocumentTypeId': instance.additionalDocumentTypeId,
      'additionalDocImagePath': instance.additionalDocImagePath,
    };

_$AddressDocumentTypesImpl _$$AddressDocumentTypesImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDocumentTypesImpl(
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'] as int?,
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
      addressDocumentTypeId: json['addressDocumentTypeId'] as int?,
      addressDocType: json['addressDocType'] as String?,
      documentCode: json['documentCode'] as String?,
    );

Map<String, dynamic> _$$AddressDocumentTypesImplToJson(
        _$AddressDocumentTypesImpl instance) =>
    <String, dynamic>{
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
      'addressDocumentTypeId': instance.addressDocumentTypeId,
      'addressDocType': instance.addressDocType,
      'documentCode': instance.documentCode,
    };

_$MotorInsuranceDocumentDetailImpl _$$MotorInsuranceDocumentDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$MotorInsuranceDocumentDetailImpl(
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'] as int?,
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
      motorInsuranceDocumentDetailId:
          json['motorInsuranceDocumentDetailId'] as int?,
      agentApplicationId: json['agentApplicationId'] as int?,
      uploadDocumentId: json['uploadDocumentId'] as int?,
      motorInsuranceDocumentTypeId:
          json['motorInsuranceDocumentTypeId'] as int?,
      motorDocuImagePath: json['motorDocuImagePath'] as String?,
    );

Map<String, dynamic> _$$MotorInsuranceDocumentDetailImplToJson(
        _$MotorInsuranceDocumentDetailImpl instance) =>
    <String, dynamic>{
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
      'motorInsuranceDocumentDetailId': instance.motorInsuranceDocumentDetailId,
      'agentApplicationId': instance.agentApplicationId,
      'uploadDocumentId': instance.uploadDocumentId,
      'motorInsuranceDocumentTypeId': instance.motorInsuranceDocumentTypeId,
      'motorDocuImagePath': instance.motorDocuImagePath,
    };

_$NonMotorInsuranceDocumentDetailImpl
    _$$NonMotorInsuranceDocumentDetailImplFromJson(Map<String, dynamic> json) =>
        _$NonMotorInsuranceDocumentDetailImpl(
          isDisabled: json['isDisabled'] as bool?,
          crd: json['crd'] == null
              ? null
              : DateTime.parse(json['crd'] as String),
          crdBy: json['crdBy'] as int?,
          lmd: json['lmd'] == null
              ? null
              : DateTime.parse(json['lmd'] as String),
          lmdBy: json['lmdBy'] as int?,
          nonMotorInsuranceDocumentDetailId:
              json['nonMotorInsuranceDocumentDetailId'] as int?,
          agentApplicationId: json['agentApplicationId'] as int?,
          uploadDocumentId: json['uploadDocumentId'] as int?,
          nonMotorInsuranceDocumentTypeId:
              json['nonMotorInsuranceDocumentTypeId'] as int?,
          nonMotorDocImagePath: json['nonMotorDocImagePath'] as String?,
        );

Map<String, dynamic> _$$NonMotorInsuranceDocumentDetailImplToJson(
        _$NonMotorInsuranceDocumentDetailImpl instance) =>
    <String, dynamic>{
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
      'nonMotorInsuranceDocumentDetailId':
          instance.nonMotorInsuranceDocumentDetailId,
      'agentApplicationId': instance.agentApplicationId,
      'uploadDocumentId': instance.uploadDocumentId,
      'nonMotorInsuranceDocumentTypeId':
          instance.nonMotorInsuranceDocumentTypeId,
      'nonMotorDocImagePath': instance.nonMotorDocImagePath,
    };

_$PolicyDocumentDetailImpl _$$PolicyDocumentDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$PolicyDocumentDetailImpl(
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'] as int?,
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
      policyDocumentDetailId: json['policyDocumentDetailId'] as int?,
      agentApplicationId: json['agentApplicationId'] as int?,
      uploadDocumentId: json['uploadDocumentId'] as int?,
      policyDocumentTypeId: json['policyDocumentTypeId'] as int?,
      policyDocImagePath: json['policyDocImagePath'] as String?,
    );

Map<String, dynamic> _$$PolicyDocumentDetailImplToJson(
        _$PolicyDocumentDetailImpl instance) =>
    <String, dynamic>{
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
      'policyDocumentDetailId': instance.policyDocumentDetailId,
      'agentApplicationId': instance.agentApplicationId,
      'uploadDocumentId': instance.uploadDocumentId,
      'policyDocumentTypeId': instance.policyDocumentTypeId,
      'policyDocImagePath': instance.policyDocImagePath,
    };

_$PorDocumentDetailImpl _$$PorDocumentDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$PorDocumentDetailImpl(
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'] as int?,
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
      porDocumentDetailId: json['porDocumentDetailId'] as int?,
      porDocumentTypeId: json['porDocumentTypeId'] as int?,
      agentApplicationId: json['agentApplicationId'] as int?,
      uploadDocumentId: json['uploadDocumentId'] as int?,
      lastName: json['lastName'] as String?,
      issueDate: json['issueDate'] == null
          ? null
          : DateTime.parse(json['issueDate'] as String),
      porDocImagePath: json['porDocImagePath'] as String?,
    );

Map<String, dynamic> _$$PorDocumentDetailImplToJson(
        _$PorDocumentDetailImpl instance) =>
    <String, dynamic>{
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
      'porDocumentDetailId': instance.porDocumentDetailId,
      'porDocumentTypeId': instance.porDocumentTypeId,
      'agentApplicationId': instance.agentApplicationId,
      'uploadDocumentId': instance.uploadDocumentId,
      'lastName': instance.lastName,
      'issueDate': instance.issueDate?.toIso8601String(),
      'porDocImagePath': instance.porDocImagePath,
    };
