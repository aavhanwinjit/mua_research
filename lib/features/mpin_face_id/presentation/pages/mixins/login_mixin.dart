import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/date_helper.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/providers/session_id_provider.dart';
import 'package:ekyc/core/utils/api_error_codes.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/request/verify_mobile_number_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/response/verify_mobile_number_response_model.dart';
import 'package:ekyc/features/login_otp/domain/usecases/verify_mobile_number.dart';
import 'package:ekyc/features/login_otp/presentation/providers/login_provider.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
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

    final String mobileNo = launchDetailsProvider?.body?.responseBody?.agentData?.loginData?.mobileNo ??
        await LocalDataHelper.getMobileNumber();

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
            mobileNumber: success.body?.responseBody?.mobileNumber,
            agentName: success.body?.responseBody?.agentName,
          );

          onSuccess(success.body?.responseBody);
        } else if (success.status?.isSuccess == false && success.status?.statusCode == ApiErrorCodes.inValidPin) {
          ref.watch(mpinLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: Strings.pinAuthenticationFailed,
          );

          onWrongPin();
        } else if (success.status?.isSuccess == false && success.status?.statusCode == ApiErrorCodes.permanentBlock) {
          ref.watch(mpinLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );

          await LocalDataHelper.removeDeviceToken();
          await LocalDataHelper.removeAuthToken();
          await LocalDataHelper.removeSessionId();
          ref.watch(userLoggedInProvider.notifier).update((state) => false);

          ref.read(phoneNumberProvider.notifier).update((state) => '');
          ref.read(loginPINProvider.notifier).update((state) => '');
          ref.read(createPINProvider.notifier).update((state) => '');
          ref.read(confirmPINProvider.notifier).update((state) => '');

          context.go(AppRoutes.loginScreen);

          // onWrongPin();
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
            mobileNumber: success.body?.responseBody?.mobileNumber,
            agentName: success.body?.responseBody?.agentName,
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
    final String phoneNumber = await LocalDataHelper.getMobileNumber();
    ref.watch(phoneNumberProvider.notifier).update((state) => phoneNumber);

    final body = VerifyMobileNumberRequestModel(mobileNumber: phoneNumber);

    ref.watch(verifyMobileNumberLoadingProvider.notifier).update((state) => true);

    final response = await getIt<VerifyMobileNumber>().call(body);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(verifyMobileNumberLoadingProvider.notifier).update((state) => false);

        context.showSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (VerifyMobileNumberResponseModel success) async {
        if (success.status?.isSuccess == true) {
          ref.read(verifyMobileNumberProvider.notifier).update((state) => success);
          ref.read(refCodeProvider.notifier).update((state) => success.body?.responseBody?.refCode);
          ref.read(expiryTimeProvider.notifier).update((state) => success.body?.responseBody?.tokenData?.expiry);

          await LocalDataHelper.storeAuthToken(success.body?.responseBody?.tokenData?.token);
          await LocalDataHelper.storeSessionId(success.body?.responseBody?.tokenData?.sessionId);

          ref
              .watch(sessionIdProvider.notifier)
              .update((state) => success.body?.responseBody?.tokenData?.sessionId ?? "");

          ref.watch(verifyMobileNumberLoadingProvider.notifier).update((state) => false);

          ref.watch(forgotPasswordSelectedProvider.notifier).update((state) => true);

          String expiryTime = DateHelper.formatExpiryTime(success.body?.responseBody?.tokenData?.expiry ?? 60);

          context.showSnackBar(message: "${Strings.otpSentSuccessfully} $expiryTime");

          context.pushNamed(AppRoutes.otpScreen, extra: {'showEdit': false});
        } else {
          ref.watch(verifyMobileNumberLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> _setData(
      {required String? deviceToken,
      required String? authToken,
      required String? sessionId,
      String? fpDeviceToken,
      required WidgetRef ref,
      required String? mobileNumber,
      required String? agentName}) async {
    await LocalDataHelper.storeDeviceToken(deviceToken);
    await LocalDataHelper.storeAuthToken(authToken);
    await LocalDataHelper.storeSessionId(sessionId);
    await LocalDataHelper.storeMobileNumber(mobileNumber);
    await LocalDataHelper.storeAgentName(agentName);

    if (fpDeviceToken != null) {
      await LocalDataHelper.storeFPToken(fpDeviceToken);
    }

    ref.watch(sessionIdProvider.notifier).update((state) => sessionId ?? "");
  }
}
