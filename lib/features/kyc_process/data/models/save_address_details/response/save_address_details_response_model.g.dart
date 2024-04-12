// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_address_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveAddressDetailsResponseModelImpl
    _$$SaveAddressDetailsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$SaveAddressDetailsResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : SaveAddressDetailsData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SaveAddressDetailsResponseModelImplToJson(
        _$SaveAddressDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SaveAddressDetailsDataImpl _$$SaveAddressDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveAddressDetailsDataImpl(
      responseBody: json['rb'] == null
          ? null
          : AgentApplicationModel.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SaveAddressDetailsDataImplToJson(
        _$SaveAddressDetailsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };
