// To parse this JSON data, do
//
//     final setAgentMpinResponseModel = setAgentMpinResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/status/status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_agent_mpin_response_model.freezed.dart';
part 'set_agent_mpin_response_model.g.dart';

SetAgentMpinResponseModel setAgentMpinResponseModelFromJson(String str) =>
    SetAgentMpinResponseModel.fromJson(json.decode(str));

String setAgentMpinResponseModelToJson(SetAgentMpinResponseModel data) => json.encode(data.toJson());

@freezed
class SetAgentMpinResponseModel with _$SetAgentMpinResponseModel {
  const factory SetAgentMpinResponseModel({
    @JsonKey(name: "h") HeaderModel? header,
    @JsonKey(name: "b") SetAgentMpinData? body,
    @JsonKey(name: "s") StatusModel? status,
  }) = _SetAgentMpinResponseModel;

  factory SetAgentMpinResponseModel.fromJson(Map<String, dynamic> json) => _$SetAgentMpinResponseModelFromJson(json);
}

@freezed
class SetAgentMpinData with _$SetAgentMpinData {
  const factory SetAgentMpinData({
    @JsonKey(name: "rb") SetAgentMpinResponseBody? responseBody,
    @JsonKey(name: "checkSum") String? checkSum,
  }) = _SetAgentMpinData;

  factory SetAgentMpinData.fromJson(Map<String, dynamic> json) => _$SetAgentMpinDataFromJson(json);
}

@freezed
class SetAgentMpinResponseBody with _$SetAgentMpinResponseBody {
  const factory SetAgentMpinResponseBody({
    @JsonKey(name: "refCode") String? refCode,
    @JsonKey(name: "tokenData") TokenData? tokenData,
  }) = _SetAgentMpinResponseBody;

  factory SetAgentMpinResponseBody.fromJson(Map<String, dynamic> json) => _$SetAgentMpinResponseBodyFromJson(json);
}

@freezed
class TokenData with _$TokenData {
  const factory TokenData({
    @JsonKey(name: "token") String? token,
    @JsonKey(name: "sessionId") String? sessionId,
    @JsonKey(name: "expiry") int? expiry,
  }) = _TokenData;

  factory TokenData.fromJson(Map<String, dynamic> json) => _$TokenDataFromJson(json);
}


// // To parse this JSON data, do
// //
// //     final setAgentMpinResponseModel = setAgentMpinResponseModelFromJson(jsonString);

// import 'dart:convert';

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'set_agent_mpin_response_model.freezed.dart';
// part 'set_agent_mpin_response_model.g.dart';

// SetAgentMpinResponseModel setAgentMpinResponseModelFromJson(String str) =>
//     SetAgentMpinResponseModel.fromJson(json.decode(str));

// String setAgentMpinResponseModelToJson(SetAgentMpinResponseModel data) => json.encode(data.toJson());

// @freezed
// class SetAgentMpinResponseModel with _$SetAgentMpinResponseModel {
//   const factory SetAgentMpinResponseModel({
//     @JsonKey(name: "refCode") String? refCode,
//     @JsonKey(name: "tokenData") TokenData? tokenData,
//   }) = _SetAgentMpinResponseModel;

//   factory SetAgentMpinResponseModel.fromJson(Map<String, dynamic> json) => _$SetAgentMpinResponseModelFromJson(json);
// }

// @freezed
// class TokenData with _$TokenData {
//   const factory TokenData({
//     @JsonKey(name: "token") String? token,
//     @JsonKey(name: "sessionId") String? sessionId,
//     @JsonKey(name: "expiry") int? expiry,
//   }) = _TokenData;

//   factory TokenData.fromJson(Map<String, dynamic> json) => _$TokenDataFromJson(json);
// }
