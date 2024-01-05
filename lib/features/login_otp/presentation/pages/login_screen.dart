import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/login_otp/presentation/providers/login_provider.dart';
import 'package:ekyc/widgets/app_bar/custom_app_bar.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:ekyc/widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          KeyboardHelper.onScreenTap(context);
        },
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CustomAppBar(
                    title: Strings.loginScreenTitle,
                    subTitleWidget: Text(
                      Strings.loginScreenSubTitle,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    maxLength: 8,
                    validator: (value) {
                      if (value!.trim().isEmpty || value.trim().length < 8) {
                        return Strings.loginPhoneValidatorString;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      ref.read(phoneNumberProvider.notifier).update((state) => value);
                    },
                    keyboardType: TextInputType.phone,
                    hint: Strings.loginPhoneHint,
                    label: Strings.loginPhoneLabel,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: _prefix(context),
                  ),
                  SizedBox(height: 24.h),
                  CustomPrimaryButton(
                    disable: ref.watch(phoneNumberProvider).trim().length < 8,
                    onTap: () {
                      _navigateToOtpScreen();
                    },
                    disabledOnTap: () {
                      context.showErrorSnackBar(message: Strings.loginPhoneValidatorString);
                    },
                    label: Strings.loginButtonTitle,
                  ),
                  SizedBox(height: 24.h),
                  _subTitle(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToOtpScreen() {
    KeyboardHelper.hideKeyboard(context);

    if (formKey.currentState!.validate()) {
      context.pushNamed(AppRoutes.otpScreen);
    } else {
      context.showErrorSnackBar(
        message: Strings.loginPhoneValidatorString,
      );
    }
  }

  Widget _prefix(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: "  +230",
            // recognizer: TapGestureRecognizer()
            //   ..onTap = () {
            //     _showCountryCodePickerBottomsheet(context);
            //   },
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
    return Text.rich(
      TextSpan(
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

  // void _showCountryCodePickerBottomsheet(BuildContext context) {
  //   showCountryPicker(
  //     context: context,
  //     showPhoneCode: true,
  //     onSelect: (Country country) {
  //       print('Select country: ${country.displayName}');
  //     },
  //   );
  // }
}
