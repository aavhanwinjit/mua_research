// To parse this JSON data, do
//
//     final changeMPINRequestModel = changeMPINRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_device_request_model.freezed.dart';
part 'register_device_request_model.g.dart';

RegisterDeviceRequestModel registerDeviceRequestModelFromJson(String str) =>
    RegisterDeviceRequestModel.fromJson(json.decode(str));

String registerDeviceRequestModelToJson(RegisterDeviceRequestModel data) =>
    json.encode(data.toJson());

@freezed
class RegisterDeviceRequestModel with _$RegisterDeviceRequestModel {
  const factory RegisterDeviceRequestModel(
          {@JsonKey(name: "mobileNumber") required String mobileNumber}) =
      _RegisterDeviceRequestModel;

  factory RegisterDeviceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDeviceRequestModelFromJson(json);
}
