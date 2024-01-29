import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_details_request.freezed.dart';
part 'launch_details_request.g.dart';

@freezed
class LaunchDetailsRequest with _$LaunchDetailsRequest {
  factory LaunchDetailsRequest({
    required bool rootedDevice,
    required String deviceToken,
  }) = _LaunchDetailsRequest;

  factory LaunchDetailsRequest.fromJson(Map<String, dynamic> json) => _$LaunchDetailsRequestFromJson(json);
}
