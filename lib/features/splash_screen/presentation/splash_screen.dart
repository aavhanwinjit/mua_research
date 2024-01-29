import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/request_header_generator.dart';
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
      context.go(AppRoutes.loginScreen);
      // callLaunchDetailsApi();
    });
  }

  void callLaunchDetailsApi() async {
    final deviceInfo = await DeviceInformationHelper().generateDeviceInformation();

    RequestHeaderGenerator(deviceInfoModel: deviceInfo).generateMessageKeyModel();
  }
}
