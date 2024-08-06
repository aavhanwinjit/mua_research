import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/providers/session_id_provider.dart';
import 'package:ekyc/core/utils/api_error_codes.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/request/verify_mobile_number_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/response/verify_mobile_number_response_model.dart';
import 'package:ekyc/features/login_otp/domain/usecases/verify_mobile_number.dart';
import 'package:ekyc/features/login_otp/presentation/providers/login_provider.dart';
import 'package:ekyc/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(verifyMobileNumberLoadingProvider.notifier).update((state) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: GestureDetector(
        onTap: () {
          KeyboardHelper.onScreenTap(context);
        },
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: ScreenUtil().statusBarHeight),
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
                    controller: controller,
                    maxLength: 8,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                    validator: (value) {
                      if (value!.trim().isEmpty || value.trim().length < 8) {
                        return Strings.loginPhoneValidatorString;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      ref.read(phoneNumberProvider.notifier).update((state) => value);
                    },
                    keyboardType: TextInputType.number,
                    hint: Strings.loginPhoneHint,
                    label: Strings.loginPhoneLabel,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: _prefix(context),
                  ),
                  SizedBox(height: 24.h),
                  CustomPrimaryButton(
                    loading: ref.watch(verifyMobileNumberLoadingProvider),
                    disable: ref.watch(phoneNumberProvider).trim().length < 8,
                    onTap: () {
                      _verifyMobileNumber();
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

  void _verifyMobileNumber() async {
    KeyboardHelper.hideKeyboard(context);

    final bool loading = ref.watch(verifyMobileNumberLoadingProvider);
    if (loading) {
      return;
    }

    if (formKey.currentState!.validate()) {
      final String phoneNumber = ref.read(phoneNumberProvider);

      final body = VerifyMobileNumberRequestModel(mobileNumber: phoneNumber);

      ref.watch(verifyMobileNumberLoadingProvider.notifier).update((state) => true);

      final response = await getIt<VerifyMobileNumber>().call(body);

      response.fold(
        (failure) {
          debugPrint("failure: $failure");
          ref.watch(verifyMobileNumberLoadingProvider.notifier).update((state) => false);

          context.showSnackBar(message: Strings.globalErrorGenericMessageOne);
        },
        (VerifyMobileNumberResponseModel success) async {
          if (success.status?.isSuccess == true) {
            ref.read(verifyMobileNumberProvider.notifier).update((state) => success);
            ref.read(refCodeProvider.notifier).update((state) => success.body?.responseBody?.refCode);

            await _setData(
              authToken: success.body?.responseBody?.tokenData?.token,
              sessionId: success.body?.responseBody?.tokenData?.sessionId,
            );

            ref.watch(verifyMobileNumberLoadingProvider.notifier).update((state) => false);

            context.showSnackBar(message: Strings.otpSentSuccessfully);
            controller.text = "";
            context.pushNamed(AppRoutes.otpScreen);
          } else if (success.status?.isSuccess == false && success.status?.statusCode == ApiErrorCodes.notFount) {
            ref.watch(verifyMobileNumberLoadingProvider.notifier).update((state) => false);

            context.pushReplacementNamed(AppRoutes.failureScreen);
          } else {
            ref.watch(verifyMobileNumberLoadingProvider.notifier).update((state) => false);

            context.showErrorSnackBar(
              message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
            );
          }
        },
      );
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

  Future<void> _setData({required String? authToken, required String? sessionId}) async {
    await LocalDataHelper.storeAuthToken(authToken);
    await LocalDataHelper.storeSessionId(sessionId);

    ref.watch(sessionIdProvider.notifier).update((state) => sessionId ?? "");
  }
}
