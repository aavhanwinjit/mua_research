import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/storage/storage_key.dart';
import 'package:ekyc/core/storage/storage_manager.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:ekyc/features/splash_screen/domain/usecases/launch_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _navigateToLoginPage(context);

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset(
          ImageConstants.pngSplashLogo,
          width: 212.w,
        ),
      ),
    );
  }

  void _navigateToLoginPage(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      callLaunchDetailsApi(context);
    });
  }

  void callLaunchDetailsApi(BuildContext context) async {
    final body = LaunchDetailsRequest(rootedDevice: false, deviceToken: "499dddb0-5ab1-4d04-90b6-87aadd4599ee");

    final result = await getIt<LaunchDetails>().call(body);

    result.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.technicalError);
        // handle failure
      },
      (LaunchDetailsResponse success) async {
        await getIt<AppStorageManager>().storeMap(
          key: StorageKey.LAUNCH_DETAILS,
          data: success.toJson(),
        );
        context.go(AppRoutes.loginScreen);

        // await getIt<SharedPreferences>().setBool(StorageConstant.isLoggedIn, true);
        // emit(LoginState.success(loginResponse: success));
      },
    );
  }
}
