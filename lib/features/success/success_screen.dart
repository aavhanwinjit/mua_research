import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      context.goNamed(AppRoutes.createPINFaceIdscreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlueColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImageConstants.successImage,
          ),
          SizedBox(height: 36.h),
          Text(
            Strings.otpSuccessScreenTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.otpSuccessScreenSubTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 10.w),
              SizedBox(
                height: 15.h,
                width: 15.h,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
