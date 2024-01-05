import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/string_extensions.dart';
import 'package:ekyc/features/login_otp/presentation/providers/login_provider.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/widgets/app_bar/custom_app_bar.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends ConsumerStatefulWidget {
  const OTPScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OTPScreenState();
}

class _OTPScreenState extends ConsumerState<OTPScreen> {
  TextEditingController otpController = TextEditingController();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phoneNumber = ref.watch(phoneNumberProvider);

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          KeyboardHelper.onScreenTap(context);
        },
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                CustomAppBar(
                  title: Strings.otpScreenTitle,
                  subTitleWidget: Row(
                    children: [
                      Text(
                        phoneNumber.maskMobileNumber(),
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
                ),
                _pinInputField(),
                SizedBox(height: 24.h),
                CustomPrimaryButton(
                  disable: ref.watch(otpProvider).trim().length < 6,
                  onTap: _verifyOTP,
                  label: Strings.contn,
                ),
                SizedBox(height: 24.h),
                _subTitle(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _verifyOTP() {
    KeyboardHelper.hideKeyboard(context);

    if (ref.read(otpProvider).trim().length < 6) {
      if (otpController.text == "111111") {
        context.pushNamed(AppRoutes.failureScreen);
      }
    } else {
      context.pushNamed(AppRoutes.successScreen);
      // context.pushNamed(AppRoutes.failureScreen);
    }
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
        ref.read(otpProvider.notifier).update((state) => value!);
      },
      validator: (value) {
        if (value!.length < 6) {
          return Strings.otpValidationString;
        }
        return null;
      },
    );
  }

  Widget _subTitle() {
    return Row(
      children: [
        Text(
          "${Strings.otpDidntReceiveIt} 00:30",
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
}
