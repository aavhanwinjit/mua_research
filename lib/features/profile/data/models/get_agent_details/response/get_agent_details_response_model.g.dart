// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_agent_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAgentDetailsResponseModelImpl _$$GetAgentDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAgentDetailsResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : GetAgentDetailsData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetAgentDetailsResponseModelImplToJson(
        _$GetAgentDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$GetAgentDetailsDataImpl _$$GetAgentDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAgentDetailsDataImpl(
      responseBody: json['rb'] == null
          ? null
          : GetAgentDetailsResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$GetAgentDetailsDataImplToJson(
        _$GetAgentDetailsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$GetAgentDetailsResponseBodyImpl _$$GetAgentDetailsResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAgentDetailsResponseBodyImpl(
      agentId: json['agentId'] as int?,
      agentName: json['agentName'] as String?,
      address: json['address'] as String?,
      companyId: json['companyId'] as int?,
      signaturePath: json['signaturePath'] as String?,
      mpin: json['mpin'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      isApproved: json['isApproved'],
      remark: json['remark'],
      dateOfApproved: json['dateOfApproved'],
      approvedBy: json['approvedBy'],
      city: json['city'] as String?,
      countryId: json['countryId'],
      emailId: json['emailId'] as String?,
      authorized: json['authorized'],
      isMpinExpired: json['isMPINExpired'],
      mpinExpiry: json['mpinExpiry'] == null
          ? null
          : DateTime.parse(json['mpinExpiry'] as String),
      profileImagePath: json['profileImagePath'],
      birthDate: json['birthDate'],
      status: json['status'],
      reviewByUser: json['reviewByUser'],
      apiUniqueKey: json['apiUniqueKey'],
      companies: json['companies'],
      agencyName: json['agencyName'] as String?,
      designation: json['designation'],
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'],
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
    );

Map<String, dynamic> _$$GetAgentDetailsResponseBodyImplToJson(
        _$GetAgentDetailsResponseBodyImpl instance) =>
    <String, dynamic>{
      'agentId': instance.agentId,
      'agentName': instance.agentName,
      'address': instance.address,
      'companyId': instance.companyId,
      'signaturePath': instance.signaturePath,
      'mpin': instance.mpin,
      'mobileNumber': instance.mobileNumber,
      'isApproved': instance.isApproved,
      'remark': instance.remark,
      'dateOfApproved': instance.dateOfApproved,
      'approvedBy': instance.approvedBy,
      'city': instance.city,
      'countryId': instance.countryId,
      'emailId': instance.emailId,
      'authorized': instance.authorized,
      'isMPINExpired': instance.isMpinExpired,
      'mpinExpiry': instance.mpinExpiry?.toIso8601String(),
      'profileImagePath': instance.profileImagePath,
      'birthDate': instance.birthDate,
      'status': instance.status,
      'reviewByUser': instance.reviewByUser,
      'apiUniqueKey': instance.apiUniqueKey,
      'companies': instance.companies,
      'agencyName': instance.agencyName,
      'designation': instance.designation,
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
    };
