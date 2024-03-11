// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_agent_applications_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAgentApplicationsResponseModelImpl
    _$$GetAgentApplicationsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAgentApplicationsResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : GetAgentApplicationsData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetAgentApplicationsResponseModelImplToJson(
        _$GetAgentApplicationsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$GetAgentApplicationsDataImpl _$$GetAgentApplicationsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAgentApplicationsDataImpl(
      responseBody: json['rb'] == null
          ? null
          : GetAgentApplicationsResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$GetAgentApplicationsDataImplToJson(
        _$GetAgentApplicationsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$GetAgentApplicationsResponseBodyImpl
    _$$GetAgentApplicationsResponseBodyImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAgentApplicationsResponseBodyImpl(
          agentApplicationList: (json['agentApplicationList'] as List<dynamic>?)
              ?.map((e) =>
                  AgentApplicationsModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAgentApplicationsResponseBodyImplToJson(
        _$GetAgentApplicationsResponseBodyImpl instance) =>
    <String, dynamic>{
      'agentApplicationList': instance.agentApplicationList,
    };

_$AgentApplicationsModelImpl _$$AgentApplicationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentApplicationsModelImpl(
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
      idDocFirstName: json['idDocFirstName'] as String?,
      idDocOtherName: json['idDocOtherName'] as String?,
      idDocNicNumber: json['idDocNICNumber'] as String?,
      idDocPolicyNumber: json['idDocPolicyNumber'] as String?,
      isIdVerificationCompleted: json['isIDVerificationCompleted'] as bool?,
      addressDocumentTypeId: json['addressDocumentTypeId'] as int?,
      addressDocImagePath: json['addressDocImagePath'] as String?,
      addressDocSurname: json['addressDocSurname'] as String?,
      addressDocOtherName: json['addressDocOtherName'] as String?,
      addressDocBillDate: json['addressDocBillDate'] as String?,
      addressDocAddress: json['addressDocAddress'] as String?,
      isAddressVerificationCompleted:
          json['isAddressVerificationCompleted'] as bool?,
      porRequired: json['porRequired'] as bool?,
      insuredDocumentTypeId1: json['insuredDocumentTypeId1'] as int?,
      insuredDocumentTypeId2: json['insuredDocumentTypeId2'] as int?,
      insuredDocumentTypeId3: json['insuredDocumentTypeId3'] as int?,
      insuredDocLastName: json['insuredDocLastName'] as String?,
      insureDocIssueDate: json['insureDocIssueDate'] as String?,
      insuredDocImagePath1: json['insuredDocImagePath1'] as String?,
      insuredDocImagePath2: json['insuredDocImagePath2'] as String?,
      insuredDocImagePath3: json['insuredDocImagePath3'] as String?,
      isPorDocVerificationCompleted:
          json['isPORDocVerificationCompleted'] as bool?,
      policyDocumentTypeId: json['policyDocumentTypeId'] as int?,
      policyDocImagePath: json['policyDocImagePath'] as String?,
      isPolicyDocVerificationCompleted:
          json['isPolicyDocVerificationCompleted'] as bool?,
      additionalDocumentTypeId: json['additionalDocumentTypeId'] as int?,
      additionalDocImagePath: json['additionalDocImagePath'] as String?,
      isAdditionalDocVerificationCompleted:
          json['isAdditionalDocVerificationCompleted'] as bool?,
    );

Map<String, dynamic> _$$AgentApplicationsModelImplToJson(
        _$AgentApplicationsModelImpl instance) =>
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
      'idDocFirstName': instance.idDocFirstName,
      'idDocOtherName': instance.idDocOtherName,
      'idDocNICNumber': instance.idDocNicNumber,
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
      'additionalDocumentTypeId': instance.additionalDocumentTypeId,
      'additionalDocImagePath': instance.additionalDocImagePath,
      'isAdditionalDocVerificationCompleted':
          instance.isAdditionalDocVerificationCompleted,
    };
