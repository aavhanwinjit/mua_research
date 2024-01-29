// To parse this JSON data, do
//
//     final messageKeyModel = messageKeyModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_key_model.freezed.dart';
part 'message_key_model.g.dart';

MessageKeyModel messageKeyModelFromJson(String str) => MessageKeyModel.fromJson(json.decode(str));

String messageKeyModelToJson(MessageKeyModel data) => json.encode(data.toJson());

@freezed
class MessageKeyModel with _$MessageKeyModel {
  const factory MessageKeyModel({
    @JsonKey(name: "r") String? requestUUID,
    @JsonKey(name: "sr") String? serviceRequest,
    @JsonKey(name: "c") String? channelId,
    @JsonKey(name: "j") String? journeyId,
    @JsonKey(name: "s") String? sessionId,
    @JsonKey(name: "i") String? index,
    @JsonKey(name: "l") String? languageId,
    @JsonKey(name: "t") String? timestamp,
    @JsonKey(name: "ci") dynamic ci,
  }) = _MessageKeyModel;

  factory MessageKeyModel.fromJson(Map<String, dynamic> json) => _$MessageKeyModelFromJson(json);
}
