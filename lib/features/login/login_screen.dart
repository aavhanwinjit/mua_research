import 'package:country_picker/country_picker.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:ekyc/core/constants/image/image_constants.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/widgets/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 32.h),
            AppPhoneTextFormField(
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return Strings.loginPhoneValidatorString;
                }
                return null;
              },
              onChanged: (value) {},
              keyboardType: TextInputType.phone,
              hint: Strings.loginPhoneHint,
              label: Strings.loginPhoneLabel,
              prefixText: "+91 | ",
              // prefixIcon: _prefix(context),
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: CustomMaterialButton(
                    btnColor: primaryColor,
                    callback: () {
                      context.pushNamed(AppRoutes.otpScreen);
                    },
                    btnText: Strings.loginButtonTitle,
                    btnTextColor: white,
                    borderRadius: 100,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            _subTitle(),
          ],
        ),
      ),
    );
  }

  Widget _prefix(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: "  +91",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _showCountryCodePickerBottomsheet(context);
              },
            style: TextStyle(
              color: black,
              fontSize: 16.sp,
            ),
            children: [
              TextSpan(
                text: "  | ",
                style: TextStyle(
                  color: textGrayColor,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _subTitle() {
    return RichText(
      text: TextSpan(
        text: Strings.agreeTerms,
        style: TextStyle(
          color: textGrayColor2,
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
        ),
        children: [
          TextSpan(
            text: Strings.termsAndCondition,
            recognizer: TapGestureRecognizer()..onTap = () {},
            style: TextStyle(
              color: black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: Strings.safetyGuidelines,
            style: TextStyle(
              color: textGrayColor2,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }

  void _showCountryCodePickerBottomsheet(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        print('Select country: ${country.displayName}');
      },
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 20.h),
          Image.asset(
            ImageConstants.pngLogo,
            width: 68.w,
          ),
          SizedBox(height: 19.h),
          Text(
            Strings.appBarTitle,
            style: TextStyle(
              fontSize: 30.sp,
              color: black,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            Strings.appBarSubTitle,
            style: TextStyle(
              fontSize: 14.sp,
              color: black,
            ),
          ),
        ],
      ),
      elevation: 0,
      backgroundColor: transparent,
      toolbarHeight: 150,
    );
  }
}
