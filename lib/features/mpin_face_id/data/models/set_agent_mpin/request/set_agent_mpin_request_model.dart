// To parse this JSON data, do
//
//     final setAgentMpinRequestModel = setAgentMpinRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_agent_mpin_request_model.freezed.dart';
part 'set_agent_mpin_request_model.g.dart';

SetAgentMpinRequestModel setAgentMpinRequestModelFromJson(String str) =>
    SetAgentMpinRequestModel.fromJson(json.decode(str));

String setAgentMpinRequestModelToJson(SetAgentMpinRequestModel data) => json.encode(data.toJson());

@freezed
class SetAgentMpinRequestModel with _$SetAgentMpinRequestModel {
  const factory SetAgentMpinRequestModel({
    @JsonKey(name: "mPIN") String? mPIN,
    @JsonKey(name: "confirmMPIN") String? confirmMpin,
    @JsonKey(name: "mobileNo") String? mobileNo,
    @JsonKey(name: "signaturePath") String? signaturePath,
  }) = _SetAgentMpinRequestModel;

  factory SetAgentMpinRequestModel.fromJson(Map<String, dynamic> json) => _$SetAgentMpinRequestModelFromJson(json);
}
