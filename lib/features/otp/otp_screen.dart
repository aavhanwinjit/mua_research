import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 32.h),
            _pinInputField(),
            SizedBox(height: 24.h),
            CustomPrimaryButton(
              disable: otpController.text.length < 6,
              onTap: () {
                if (otpController.text == "111111") {
                  context.pushNamed(AppRoutes.failureScreen);
                } else {
                  context.pushNamed(AppRoutes.successScreen);
                }
              },
              label: Strings.contn,
            ),
            SizedBox(height: 24.h),
            _subTitle(),
          ],
        ),
      ),
    );
  }

  Widget _pinInputField() {
    return Pinput(
      length: 6,
      controller: otpController,
      defaultPinTheme: PinTheme(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      focusedPinTheme: PinTheme(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(
              color: primaryColor,
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      submittedPinTheme: PinTheme(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(
              color: primaryGreenColor,
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      onChanged: (String? value) {
        setState(() {});
      },
      onCompleted: (String? value) {
        setState(() {});
      },
    );
  }

  Widget _subTitle() {
    return Row(
      children: [
        Text(
          "Didn't received it? Retry in 00:30",
          style: TextStyle(
            color: textGrayColor2,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        // TextButton(
        //   onPressed: () {},
        //   child: Text(
        //     "Retry in 00:30",
        //     style: TextStyle(
        //       color: textGrayColor2,
        //     ),
        //   ),
        // ),
      ],
    );
  }

  AppBar _appBar() {
    return AppBarHelper.customAppBar(
      title: Strings.otpScreenTitle,
      subTitleWidget: Row(
        children: [
          Text(
            "xxxxxx4567",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: black,
            ),
          ),
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              Strings.edit,
              style: TextStyle(
                color: primaryColor,
                decoration: TextDecoration.underline,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
