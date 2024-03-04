import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';
import 'package:ekyc/features/profile/domain/usecases/get_agent_details.dart';
import 'package:flutter/material.dart';

mixin AgentDetailsMixin {
  // Future<void> logout(BuildContext context) async {
  //   final deviceToken = await _getDeviceToken();
  //   final sessionId = await _getSessionId();

  //   debugPrint("sessionId: $sessionId");

  //   final response = await getIt<GetAgentDetails>().call(null, deviceToken, sessionId);

  //   response.fold(
  //     (failure) {
  //       debugPrint("failure: $failure");
  //       context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
  //     },
  //     (LogoutResponseModel success) async {
  //       if (success.status?.isSuccess == true) {
  //         getIt<AppStorageManager>().clearStorage();

  //         context.go(AppRoutes.loginScreen);
  //       } else {
  //         context.showErrorSnackBar(
  //           message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
  //         );
  //       }
  //     },
  //   );
  // }
}
