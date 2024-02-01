// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/device_info/device_info_model.dart';
import 'package:ekyc/models/message_key/message_key_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_model.freezed.dart';
part 'header_model.g.dart';

HeaderModel headerModelFromJson(String str) => HeaderModel.fromJson(json.decode(str));

String headerModelToJson(HeaderModel data) => json.encode(data.toJson());

@freezed
class HeaderModel with _$HeaderModel {
  const factory HeaderModel({
    @JsonKey(name: "di") DeviceInfoModel? deviceInfo,
    @JsonKey(name: "mk") MessageKeyModel? messageKey,
  }) = _HeaderModel;

  factory HeaderModel.fromJson(Map<String, dynamic> json) => _$HeaderModelFromJson(json);
}
