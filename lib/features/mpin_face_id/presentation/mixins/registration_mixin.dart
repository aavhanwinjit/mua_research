import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/providers/session_id_provider.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/auth_profile/presentation/providers/auth_profile_provider.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_fingerprint/response/set_fingerprint_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_agent_mpin.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_fingerprint.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

mixin RegistrationMixin {
  void setAgentMPIN({
    required BuildContext context,
    required WidgetRef ref,
    required Function onSuccess,
    required Function biometricAuth,
  }) async {
    final validateOTPResponse = ref.read(validateOTPResponseProvider);
    final authProfileResponse = ref.read(authProfileProvider);

    SetAgentMpinRequestModel request = SetAgentMpinRequestModel(
      confirmMpin: ref.read(confirmPINProvider),
      mobileNo: validateOTPResponse?.body?.responseBody?.mobileNumber,
      mPIN: ref.read(createPINProvider),
      signaturePath: authProfileResponse?.body?.responseBody?.fileName,
    );

    debugPrint("request in set agent mpin.to json: ${request.toJson()}");

    final response = await getIt<SetAgentMPIN>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
        // clear controller
        ref.watch(createPINProvider.notifier).update((state) => '');
        ref.watch(confirmPINProvider.notifier).update((state) => '');
      },
      (SetAgentMpinResponseModel success) async {
        if (success.status?.isSuccess == true) {
          onSuccess();

          ref.read(agentLoginDetailsProvider.notifier).update((state) => success.body?.responseBody);

          ref.watch(userLoggedInProvider.notifier).update((state) => true);

          // store the auth token
          await _setData(
            deviceToken: success.body?.responseBody?.deviceToken,
            authToken: success.body?.responseBody?.authToken?.token,
            sessionId: success.body?.responseBody?.authToken?.sessionId,
            ref: ref,
          );

          final biometricSelected = ref.watch(biometricSelectedProvider);

          if (biometricSelected) {
            biometricAuth();
          } else {
            context.go(AppRoutes.onboardSuccessScreen);
          }
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
        // clear controller
        ref.watch(createPINProvider.notifier).update((state) => '');
        ref.watch(confirmPINProvider.notifier).update((state) => '');
      },
    );
  }

  Future<void> setFingerPrint({
    required BuildContext context,
    required WidgetRef ref,
    required Function onSuccess,
    required Function successNavigation,
  }) async {
    final response = await getIt<SetFingerPrint>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (SetFingerprintResponseModel success) async {
        if (success.status?.isSuccess == true) {
          onSuccess();

          context.showSnackBar(message: success.body?.responseBody?.data?.message ?? "");

          // store the auth token
          await _setData(
            deviceToken: success.body?.responseBody?.data?.data?.deviceToken,
            authToken: success.body?.responseBody?.tokenData?.token,
            sessionId: success.body?.responseBody?.tokenData?.sessionId,
            fpToken: success.body?.responseBody?.data?.data?.id,
            ref: ref,
          );

          successNavigation();
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> _setData({
    required String? deviceToken,
    required String? authToken,
    required String? sessionId,
    String? fpToken,
    required WidgetRef ref,
  }) async {
    await LocalDataHelper.storeDeviceToken(deviceToken);
    await LocalDataHelper.storeAuthToken(authToken);
    await LocalDataHelper.storeSessionId(sessionId);

    if (fpToken != null) {
      await LocalDataHelper.storeFPToken(fpToken);
    }

    ref.watch(sessionIdProvider.notifier).update((state) => sessionId ?? "");
  }
}
