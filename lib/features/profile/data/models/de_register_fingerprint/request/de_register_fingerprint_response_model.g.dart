// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'de_register_fingerprint_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeRegisterFingerprintResponseModelImpl
    _$$DeRegisterFingerprintResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$DeRegisterFingerprintResponseModelImpl(
          header: json['h'] == null
              ? null
              : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
          body: json['b'] == null
              ? null
              : DeRegisterFingerPrintData.fromJson(
                  json['b'] as Map<String, dynamic>),
          status: json['s'] == null
              ? null
              : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$DeRegisterFingerprintResponseModelImplToJson(
        _$DeRegisterFingerprintResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$DeRegisterFingerPrintDataImpl _$$DeRegisterFingerPrintDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DeRegisterFingerPrintDataImpl(
      responseBody: json['rb'] == null
          ? null
          : DeRegisterFingerprintResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$DeRegisterFingerPrintDataImplToJson(
        _$DeRegisterFingerPrintDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$DeRegisterFingerprintResponseBodyImpl
    _$$DeRegisterFingerprintResponseBodyImplFromJson(
            Map<String, dynamic> json) =>
        _$DeRegisterFingerprintResponseBodyImpl(
          message: json['message'] as String?,
          data: json['data'],
        );

Map<String, dynamic> _$$DeRegisterFingerprintResponseBodyImplToJson(
        _$DeRegisterFingerprintResponseBodyImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
