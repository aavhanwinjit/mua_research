// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeaderModelImpl _$$HeaderModelImplFromJson(Map<String, dynamic> json) =>
    _$HeaderModelImpl(
      deviceInfo: json['di'] == null
          ? null
          : DeviceInfoModel.fromJson(json['di'] as Map<String, dynamic>),
      messageKey: json['mk'] == null
          ? null
          : MessageKeyModel.fromJson(json['mk'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HeaderModelImplToJson(_$HeaderModelImpl instance) =>
    <String, dynamic>{
      'di': instance.deviceInfo,
      'mk': instance.messageKey,
    };
