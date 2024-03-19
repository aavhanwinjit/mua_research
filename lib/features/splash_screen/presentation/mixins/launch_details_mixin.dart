import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/providers/session_id_provider.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:ekyc/features/splash_screen/domain/usecases/launch_details.dart';
import 'package:ekyc/features/splash_screen/presentation/providers/launch_details_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:safe_device/safe_device.dart';

mixin LaunchDetailsMixin {
  void callLaunchDetailsApi({required BuildContext context, required WidgetRef ref}) async {
    final bool isRootedDevice = await _detectRootOrJailbreak();

    final String deviceToken = await _getDeviceToken();

    final request = LaunchDetailsRequest(
      rootedDevice: isRootedDevice,
      deviceToken: deviceToken,
    );

    final result = await getIt<LaunchDetails>().call(request);

    result.fold(
      (failure) {
        debugPrint("failure: ${failure.exception}");
        context.showErrorSnackBar(message: Strings.technicalError);
      },
      (LaunchDetailsResponse success) async {
        if (success.status?.isSuccess == true) {
          ref.watch(launchDetailsResponseProvider.notifier).update((state) => success);

          if (success.body?.responseBody?.agentData != null) {
            if (success.body?.responseBody?.tokenData != null) {
              await _setData(
                authToken: success.body?.responseBody?.tokenData?.token,
                sessionId: success.body?.responseBody?.tokenData?.sessionId,
                deviceToken: success.body?.responseBody?.agentData?.loginData?.deviceToken,
                ref: ref,
              );
            }

            ref
                .watch(isFPLoginProvider.notifier)
                .update((state) => success.body?.responseBody?.agentData?.loginData?.isFpLogin ?? false);

            context.go(AppRoutes.mpinLoginScreen);
          } else {
            context.go(AppRoutes.loginScreen);
          }
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<bool> _detectRootOrJailbreak() async {
    bool isJailBroken = false;
    // await SafeDevice.isJailBroken;
    debugPrint("jailBroken: $isJailBroken");

    bool isRealDevice = await SafeDevice.isRealDevice;
    debugPrint("realDevice: $isRealDevice");

    return isJailBroken;
  }

  Future<String> _getDeviceToken() async {
    final String deviceToken = await LocalDataHelper.getDeviceToken();
    return deviceToken;
  }

  Future<void> _setData({
    required String? authToken,
    required String? sessionId,
    required String? deviceToken,
    required WidgetRef ref,
  }) async {
    await LocalDataHelper.storeAuthToken(authToken);
    await LocalDataHelper.storeSessionId(sessionId);
    await LocalDataHelper.storeDeviceToken(deviceToken);

    ref.watch(sessionIdProvider.notifier).update((state) => sessionId ?? "");
  }
}
