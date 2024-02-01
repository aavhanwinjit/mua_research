// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

RequestModel requestModelFromJson(String str) => RequestModel.fromJson(json.decode(str));

String requestModelToJson(RequestModel data) => json.encode(data.toJson());

@freezed
class RequestModel with _$RequestModel {
  const factory RequestModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") dynamic body,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);
}
