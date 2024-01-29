// To parse this JSON data, do
//
//     final deviceInfoRequest = deviceInfoRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info_model.freezed.dart';
part 'device_info_model.g.dart';

DeviceInfoModel deviceInfoRequestFromJson(String str) => DeviceInfoModel.fromJson(json.decode(str));

String deviceInfoRequestToJson(DeviceInfoModel data) => json.encode(data.toJson());

@freezed
class DeviceInfoModel with _$DeviceInfoModel {
  const factory DeviceInfoModel({
    @JsonKey(name: "p") String? platform,
    @JsonKey(name: "o") String? osVersion,
    @JsonKey(name: "m") String? model,
    @JsonKey(name: "d") String? deviceId,
    @JsonKey(name: "a") String? appVersion,
    @JsonKey(name: "i") String? ipAddress,
  }) = _DeviceInfoModel;

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) => _$DeviceInfoModelFromJson(json);
}
