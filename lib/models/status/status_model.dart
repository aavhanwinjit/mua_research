// To parse this JSON data, do
//
//     final statusModel = statusModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.freezed.dart';
part 'status_model.g.dart';

StatusModel statusModelFromJson(String str) => StatusModel.fromJson(json.decode(str));

String statusModelToJson(StatusModel data) => json.encode(data.toJson());

@freezed
class StatusModel with _$StatusModel {
  const factory StatusModel({
    @JsonKey(name: "isSuccess") bool? isSuccess,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "statusCode") String? statusCode,
  }) = _StatusModel;

  factory StatusModel.fromJson(Map<String, dynamic> json) => _$StatusModelFromJson(json);
}
