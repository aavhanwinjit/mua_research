import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/package_info_helper.dart';
import 'package:ekyc/features/splash_screen/presentation/mixins/launch_details_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> with LaunchDetailsMixin {
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
                  "${Strings.version}: $version",
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
      callLaunchDetailsApi(context: context, ref: ref);
    });
  }
}
