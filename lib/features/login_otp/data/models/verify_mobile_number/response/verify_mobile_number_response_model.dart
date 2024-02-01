// To parse this JSON data, do
//
//     final verifyMobileNumberResponseModel = verifyMobileNumberResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'verify_mobile_number_response_model.freezed.dart';
part 'verify_mobile_number_response_model.g.dart';

VerifyMobileNumberResponseModel verifyMobileNumberResponseModelFromJson(String str) => VerifyMobileNumberResponseModel.fromJson(json.decode(str));

String verifyMobileNumberResponseModelToJson(VerifyMobileNumberResponseModel data) => json.encode(data.toJson());

@freezed
class VerifyMobileNumberResponseModel with _$VerifyMobileNumberResponseModel {
    const factory VerifyMobileNumberResponseModel({
        @JsonKey(name: "refCode")
        String? refCode,
        @JsonKey(name: "tokenData")
        TokenData? tokenData,
    }) = _VerifyMobileNumberResponseModel;

    factory VerifyMobileNumberResponseModel.fromJson(Map<String, dynamic> json) => _$VerifyMobileNumberResponseModelFromJson(json);
}

@freezed
class TokenData with _$TokenData {
    const factory TokenData({
        @JsonKey(name: "token")
        String? token,
        @JsonKey(name: "sessionId")
        String? sessionId,
        @JsonKey(name: "expiry")
        int? expiry,
    }) = _TokenData;

    factory TokenData.fromJson(Map<String, dynamic> json) => _$TokenDataFromJson(json);
}
