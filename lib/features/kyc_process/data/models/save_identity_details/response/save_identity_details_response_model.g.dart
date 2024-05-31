// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_identity_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveIdentityDetailsResponseModelImpl
    _$$SaveIdentityDetailsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveIdentityDetailsResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : SaveIdentityDetailsData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SaveIdentityDetailsResponseModelImplToJson(
        _$SaveIdentityDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SaveIdentityDetailsDataImpl _$$SaveIdentityDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveIdentityDetailsDataImpl(
      responseBody: json['rb'] == null
          ? null
          : AgentApplicationModel.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SaveIdentityDetailsDataImplToJson(
        _$SaveIdentityDetailsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
