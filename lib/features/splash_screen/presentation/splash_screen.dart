import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/package_info_helper.dart';
import 'package:ekyc/core/storage/storage_key.dart';
import 'package:ekyc/core/storage/storage_manager.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:ekyc/features/splash_screen/domain/usecases/launch_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:safe_device/safe_device.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  String version = "";

  @override
  void initState() {
    super.initState();

    _getVersion();
    _navigateToLoginPage();
  }

  Future<void> _getVersion() async {
    version = await PackageInfoHelper.getVersion();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              ImageConstants.pngSplashLogo,
              width: 212.w,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Version: $version",
                  style: const TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToLoginPage() {
    Future.delayed(const Duration(seconds: 3), () {
      // callLaunchDetailsApi(context);
      context.go(AppRoutes.loginScreen);
    });
  }

  void callLaunchDetailsApi(BuildContext context) async {
    final isJailBroken = await detectRootOrJailbreak();

    final body = LaunchDetailsRequest(
      rootedDevice: isJailBroken,
      deviceToken: "499dddb0-5ab1-4d04-90b6-87aadd4599ee",
    );

    final result = await getIt<LaunchDetails>().call(body);

    result.fold(
      (failure) {
        debugPrint("failure: ${failure.exception}");
        context.showErrorSnackBar(message: Strings.technicalError);
      },
      (LaunchDetailsResponse success) async {
        debugPrint("success in splash: $success");

        if (success.status?.isSuccess == true) {
          await getIt<AppStorageManager>().storeMap(
            key: StorageKey.LAUNCH_DETAILS,
            data: success.toJson(),
          );
          context.go(AppRoutes.loginScreen);
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }

        // await getIt<SharedPreferences>().setBool(StorageConstant.isLoggedIn, true);
        // emit(LoginState.success(loginResponse: success));
      },
    );
  }

  Future<bool> detectRootOrJailbreak() async {
    bool isJailBroken = await SafeDevice.isJailBroken;
    debugPrint("jailBroken: $isJailBroken");

    bool isRealDevice = await SafeDevice.isRealDevice;
    debugPrint("realDevice: $isRealDevice");

    return isJailBroken;
  }
}

// class SplashScreen extends ConsumerWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     _navigateToLoginPage(context);

//     return Scaffold(
//       backgroundColor: primaryColor,
//       body: Stack(
//         children: [
//           Center(
//             child: Image.asset(
//               ImageConstants.pngSplashLogo,
//               width: 212.w,
//             ),
//           ),
//           const Text()
//         ],
//       ),
//     );
//   }

//   void _navigateToLoginPage(BuildContext context) {
//     Future.delayed(const Duration(seconds: 3), () {
//       // callLaunchDetailsApi(context);
//       context.go(AppRoutes.loginScreen);
//     });
//   }

//   void callLaunchDetailsApi(BuildContext context) async {
//     final isJailBroken = await detectRootOrJailbreak();

//     final body = LaunchDetailsRequest(
//       rootedDevice: isJailBroken,
//       deviceToken: "499dddb0-5ab1-4d04-90b6-87aadd4599ee",
//     );

//     final result = await getIt<LaunchDetails>().call(body);

//     result.fold(
//       (failure) {
//         debugPrint("failure: ${failure.exception}");
//         context.showErrorSnackBar(message: Strings.technicalError);
//       },
//       (LaunchDetailsResponse success) async {
//         debugPrint("success in splash: $success");

//         if (success.status?.isSuccess == true) {
//           await getIt<AppStorageManager>().storeMap(
//             key: StorageKey.LAUNCH_DETAILS,
//             data: success.toJson(),
//           );
//           context.go(AppRoutes.loginScreen);
//         } else {
//           context.showErrorSnackBar(
//             message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
//           );
//         }

//         // await getIt<SharedPreferences>().setBool(StorageConstant.isLoggedIn, true);
//         // emit(LoginState.success(loginResponse: success));
//       },
//     );
//   }

//   Future<bool> detectRootOrJailbreak() async {
//     bool isJailBroken = await SafeDevice.isJailBroken;
//     debugPrint("jailBroken: $isJailBroken");

//     bool isRealDevice = await SafeDevice.isRealDevice;
//     debugPrint("realDevice: $isRealDevice");

//     return isJailBroken;
//   }
// }
