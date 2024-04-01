// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_kyc_types_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetKycTypesResponseModelImpl _$$GetKycTypesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetKycTypesResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : GetKycTypesData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetKycTypesResponseModelImplToJson(
        _$GetKycTypesResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$GetKycTypesDataImpl _$$GetKycTypesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetKycTypesDataImpl(
      responseBody: (json['rb'] as List<dynamic>?)
          ?.map((e) => KycTypesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$GetKycTypesDataImplToJson(
        _$GetKycTypesDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$KycTypesModelImpl _$$KycTypesModelImplFromJson(Map<String, dynamic> json) =>
    _$KycTypesModelImpl(
      kycTypeId: json['kycTypeId'] as int?,
      kycTypes: json['kycTypes'] as String?,
      companyId: json['companyId'] as String?,
      policyType: json['policyType'] as String?,
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'] as int?,
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
    );

Map<String, dynamic> _$$KycTypesModelImplToJson(_$KycTypesModelImpl instance) =>
    <String, dynamic>{
      'kycTypeId': instance.kycTypeId,
      'kycTypes': instance.kycTypes,
      'companyId': instance.companyId,
      'policyType': instance.policyType,
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
    };
