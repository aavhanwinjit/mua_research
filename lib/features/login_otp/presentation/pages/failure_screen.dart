import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlueColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(ImageConstants.failureImage),
          SizedBox(height: 36.h),
          Text(
            Strings.otpFailureScreenTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            Strings.otpFailureScreenSubTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 37.w),
            child: CustomPrimaryButton(
              onTap: () {
                context.go(AppRoutes.loginScreen);
              },
              label: Strings.otpFailureScreenButtonTitle,
            ),
          ),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
