import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_data.freezed.dart';
part 'token_data.g.dart';

@freezed
class TokenData with _$TokenData {
  const factory TokenData({
    @JsonKey(name: "token") String? token,
    @JsonKey(name: "sessionId") String? sessionId,
    @JsonKey(name: "expiry") int? expiry,
  }) = _TokenData;

  factory TokenData.fromJson(Map<String, dynamic> json) => _$TokenDataFromJson(json);
}
