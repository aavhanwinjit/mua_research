import 'package:country_picker/country_picker.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:ekyc/widgets/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHelper.customAppBar(
        title: Strings.loginScreenTitle,
        subTitleWidget: Text(
          Strings.loginScreenSubTitle,
          style: TextStyle(
            fontSize: 14.sp,
            color: black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 32.h),
              AppPhoneTextFormField(
                controller: _phoneNumberController,
                maxLength: 8,
                validator: (value) {
                  if (value!.trim().isEmpty || value.trim().length < 8) {
                    return Strings.loginPhoneValidatorString;
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
                hint: Strings.loginPhoneHint,
                label: Strings.loginPhoneLabel,
                // prefixText: "+91 | ",
                prefixIcon: _prefix(context),
              ),
              SizedBox(height: 24.h),
              CustomPrimaryButton(
                disable: _phoneNumberController.text.trim().length < 8,
                onTap: () {
                  context.pushNamed(AppRoutes.otpScreen);
                  // if (formKey.currentState!.validate()) {
                  //   context.pushNamed(AppRoutes.otpScreen);
                  // } else {
                  //   context.showErrorSnackBar(
                  //     message: Strings.loginPhoneValidatorString,
                  //   );
                  // }
                },
                label: Strings.loginButtonTitle,
              ),
              SizedBox(height: 24.h),
              _subTitle(),
            ],
          ),
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
}
