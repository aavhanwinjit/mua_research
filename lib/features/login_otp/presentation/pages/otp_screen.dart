import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/core/utils/extensions/string_extensions.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/request/resend_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/response/resend_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/request/validate_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/response/verify_mobile_number_response_model.dart';
import 'package:ekyc/features/login_otp/domain/usecases/resend_otp.dart';
import 'package:ekyc/features/login_otp/domain/usecases/validate_otp.dart';
import 'package:ekyc/features/login_otp/presentation/providers/login_provider.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/features/login_otp/presentation/widgets/timer_widget.dart';
import 'package:ekyc/widgets/app_bar/custom_app_bar.dart';
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

  int retryCount = 0;
  bool showResendOption = false;

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phoneNumber = ref.watch(phoneNumberProvider);

    return SafeArea(
      top: false,
      child: GestureDetector(
        onTap: () {
          KeyboardHelper.onScreenTap(context);
        },
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: ScreenUtil().statusBarHeight),
            child: Column(
              children: [
                CustomAppBar(
                  title: Strings.otpScreenTitle,
                  subTitleWidget: Row(
                    children: [
                      Text(
                        phoneNumber.maskMobileNumber(),
                        style: const TextStyle(
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
                SizedBox(height: 18.h),
                _resendWidget(),
              ],
            ),
          ),
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

  Widget _resendWidget() {
    return Row(
      children: [
        Text(
          Strings.otpDidntReceiveIt,
          style: TextStyle(
            color: textGrayColor2,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        if (!showResendOption)
          Text(
            Strings.retryIn,
            style: TextStyle(
              color: textGrayColor2,
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        !showResendOption
            ? TimerWidget(
                onTimerFinished: () {
                  setState(() {
                    showResendOption = true;
                  });
                },
                seconds: 10,
                timerKey: ValueKey(retryCount),
              )
            : TextButton.icon(
                onPressed: _resendOTP,
                icon: const Icon(Icons.timer_outlined, color: black),
                label: const Text(
                  "Resend OTP",
                  style: TextStyle(
                    color: black,
                  ),
                ),
              ),
      ],
    );
  }

  void _verifyOTP() async {
    KeyboardHelper.hideKeyboard(context);

    final String phoneNumber = ref.read(phoneNumberProvider);

    final VerifyMobileNumberResponseModel? verifyMobileNumberResponse = ref.read(verifyMobileNumberProvider);

    final request = ValidateOtpRequestModel(
      preValidationModel: PreValidationModel(
        validationType: "OTP",
        refCode: verifyMobileNumberResponse?.refCode,
        otpNumber: ref.watch(otpProvider).trim(),
        key: null,
      ),
      mobileNumber: phoneNumber,
    );

    final response = await getIt<ValidateOTP>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        // handle failure
        context.pushNamed(AppRoutes.failureScreen);
      },
      (ValidateOtpResponseModel success) async {
        ref.read(validateOTPResponseProvider.notifier).update((state) => success);

        context.pushNamed(AppRoutes.successScreen);
      },
    );
  }

  void _resendOTP() async {
    if (retryCount == 3) {
      debugPrint("retry count $retryCount");
      context.showErrorSnackBar(message: Strings.maximumOTPRetryReached);
      return;
    }
    final VerifyMobileNumberResponseModel? verifyMobileNumberResponse = ref.read(verifyMobileNumberProvider);

    final ResendOtpRequestModel request = ResendOtpRequestModel(refCode: verifyMobileNumberResponse?.refCode);

    final response = await getIt<ResendOTP>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        // handle failure
      },
      (ResendOtpResponseModel success) async {
        // ref.read(verifyMobileNumberProvider.notifier).update((state) => success);
        context.showSnackBar(message: Strings.otpSentSuccessfully);

        retryCount++;
        showResendOption = false;
        setState(() {});
      },
    );
  }
}
