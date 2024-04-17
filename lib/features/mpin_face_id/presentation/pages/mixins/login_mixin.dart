import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/providers/session_id_provider.dart';
import 'package:ekyc/core/utils/api_error_codes.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/request/login_by_fp_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/request/login_by_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/response/login_by_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_fp.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_mpin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:ekyc/features/splash_screen/presentation/providers/launch_details_providers.dart';
import 'package:ekyc/models/agent_login_details/agent_login_details_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

mixin LoginMixin {
  void loginByMPIN({
    required BuildContext context,
    required WidgetRef ref,
    required Function(AgentLoginDetailsResponseModel? agentDetails) onSuccess,
    required Function() onWrongPin,
    required Function() onFailure,
  }) async {
    final loading = ref.watch(mpinLoadingProvider);
    if (loading) return;

    final deviceInfo = await DeviceInformationHelper().generateDeviceInformation();

    final launchDetailsProvider = ref.watch(launchDetailsResponseProvider);

    final String mobileNo = launchDetailsProvider?.body?.responseBody?.agentData?.loginData?.mobileNo ?? "";

    final String deviceToken = await LocalDataHelper.getDeviceToken();

    LoginbyMpinRequestModel request = LoginbyMpinRequestModel(
      deviceId: deviceInfo.deviceId,
      deviceToken: deviceToken,
      mPin: ref.watch(loginPINProvider),
      mobileNo: mobileNo,
    );

    ref.watch(mpinLoadingProvider.notifier).update((state) => true);

    final response = await getIt<LoginByMpin>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(mpinLoadingProvider.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (LoginbyMpinResponseModel success) async {
        if (success.status?.isSuccess == true) {
          await _setData(
            deviceToken: success.body?.responseBody?.deviceToken,
            authToken: success.body?.responseBody?.authToken?.token,
            sessionId: success.body?.responseBody?.authToken?.sessionId,
            ref: ref,
          );

          onSuccess(success.body?.responseBody);
        } else if (success.status?.isSuccess == false && success.status?.statusCode == ApiErrorCodes.inValidPin) {
          ref.watch(mpinLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: Strings.pinAuthenticationFailed,
          );

          onWrongPin();
        } else {
          ref.watch(mpinLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );

          onFailure();
        }
      },
    );
  }

  void loginByFP({
    required BuildContext context,
    required WidgetRef ref,
    required Function(AgentLoginDetailsResponseModel? agentDetails) onSuccess,
  }) async {
    final loading = ref.watch(mpinLoadingProvider);
    if (loading) return;

    final deviceInfo = await DeviceInformationHelper().generateDeviceInformation();

    final String deviceToken = await LocalDataHelper.getDeviceToken();
    final String fpToken = await LocalDataHelper.getFPToken();

    final launchDetailsProvider = ref.watch(launchDetailsResponseProvider);
    final String mobileNo = launchDetailsProvider?.body?.responseBody?.agentData?.loginData?.mobileNo ?? "";

    LoginByFpRequestModel request = LoginByFpRequestModel(
      deviceId: deviceInfo.deviceId,
      deviceToken: deviceToken,
      biometricStatus: true,
      fpDeviceToken: fpToken,
      mobileNo: mobileNo,
    );

    ref.watch(mpinLoadingProvider.notifier).update((state) => true);

    final response = await getIt<LoginByFP>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(mpinLoadingProvider.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (LoginByFpResponseModel success) async {
        if (success.status?.isSuccess == true) {
          await _setData(
            deviceToken: success.body?.responseBody?.deviceToken,
            authToken: success.body?.responseBody?.authToken?.token,
            sessionId: success.body?.responseBody?.authToken?.sessionId,
            fpDeviceToken: success.body?.responseBody?.fpDeviceToken,
            ref: ref,
          );

          onSuccess(success.body?.responseBody);
        } else {
          ref.watch(mpinLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> forgotPin({required BuildContext context, required WidgetRef ref}) async {
    ref.watch(forgotPasswordSelectedProvider.notifier).update((state) => true);

    context.pushNamed(AppRoutes.loginScreen);
  }

  Future<void> _setData({
    required String? deviceToken,
    required String? authToken,
    required String? sessionId,
    String? fpDeviceToken,
    required WidgetRef ref,
  }) async {
    await LocalDataHelper.storeDeviceToken(deviceToken);
    await LocalDataHelper.storeAuthToken(authToken);
    await LocalDataHelper.storeSessionId(sessionId);

    if (fpDeviceToken != null) {
      await LocalDataHelper.storeFPToken(fpDeviceToken);
    }

    ref.watch(sessionIdProvider.notifier).update((state) => sessionId ?? "");
  }
}
