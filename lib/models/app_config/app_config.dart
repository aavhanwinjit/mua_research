// To parse this JSON data, do
//
//     final appConfig = appConfigFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

AppConfig appConfigFromJson(String str) => AppConfig.fromJson(json.decode(str));

String appConfigToJson(AppConfig data) => json.encode(data.toJson());

@freezed
class AppConfig with _$AppConfig {
  const factory AppConfig({
    @JsonKey(name: "baseUrl") String? baseUrl,
    @JsonKey(name: "appName") String? appName,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) => _$AppConfigFromJson(json);
}
