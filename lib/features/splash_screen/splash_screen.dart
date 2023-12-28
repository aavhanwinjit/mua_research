import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:ekyc/core/constants/image/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  void printScreenInformation(BuildContext context) {
    print('Device Size:${Size(1.sw, 1.sh)}');
    print('Device Size 2:${Size(1.w, 100.h)}');
    print('Device pixel density:${ScreenUtil().pixelRatio}');
    print('Bottom safe zone distance dp:${ScreenUtil().bottomBarHeight}dp');
    print('Status bar height dp:${ScreenUtil().statusBarHeight}dp');
    print('The ratio of actual width to UI design:${ScreenUtil().scaleWidth}');
    print('The ratio of actual height to UI design:${ScreenUtil().scaleHeight}');
    print('System font scaling:${ScreenUtil().textScaleFactor}');
    print('0.5 times the screen width:${0.5.sw}dp');
    print('0.5 times the screen height:${0.5.sh}dp');
    print('Screen orientation:${ScreenUtil().orientation}');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // printScreenInformation(context);
    _navigateToLoginPage(context);

    return Scaffold(
      backgroundColor: orange,
      body: Center(
        child: Image.asset(
          ImageConstants.pngSplashLogo,
          width: 212.w,
        ),
      ),
    );
  }

  void _navigateToLoginPage(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      context.go(AppRoutes.loginScreen);
    });
  }
}
