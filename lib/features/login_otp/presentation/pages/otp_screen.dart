import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/date_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/providers/session_id_provider.dart';
import 'package:ekyc/core/utils/api_error_codes.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/core/utils/extensions/string_extensions.dart';
import 'package:ekyc/features/login_otp/data/models/change_mpin/request/change_mpin_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/change_mpin/response/change_mpin_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/regsiter_device/request/register_device_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/regsiter_device/response/register_device_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/request/resend_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/response/resend_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/request/validate_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
import 'package:ekyc/features/login_otp/domain/usecases/change_mpin.dart';
import 'package:ekyc/features/login_otp/domain/usecases/register_device.dart';
import 'package:ekyc/features/login_otp/domain/usecases/resend_otp.dart';
import 'package:ekyc/features/login_otp/domain/usecases/validate_otp.dart';
import 'package:ekyc/features/login_otp/presentation/providers/login_provider.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/features/login_otp/presentation/widgets/timer_widget.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/logout_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:ekyc/features/splash_screen/presentation/mixins/launch_details_mixin.dart';
import 'package:ekyc/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends ConsumerStatefulWidget {
  final bool? showEdit;
  const OTPScreen({super.key, this.showEdit = true});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OTPScreenState();
}

class _OTPScreenState extends ConsumerState<OTPScreen> with LogoutMixin, LaunchDetailsMixin {
  TextEditingController otpController = TextEditingController();

  int retryCount = 0;
  bool showResendOption = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(otpScreenLoadingProvider.notifier).update((state) => false);
      ref.watch(otpProvider.notifier).update((state) => '');
    });
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phoneNumber = ref.watch(phoneNumberProvider);

    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        context.pop(1);
        // bool isLoggedIn = ref.watch(userLoggedInProvider);

        // debugPrint("isLoggedIn: $isLoggedIn");

        // if (isLoggedIn == true) {
        //   debugPrint("inside logged in true");
        //   Navigator.pop(context);
        //   debugPrint("inside logged in true 2");
        //   Navigator.pop(context);
        //   debugPrint("inside logged in true 3");
        //   Navigator.pop(context);
        // } else {
        //   debugPrint("inside logged in false");
        //   context.pop();
        // }
      },
      child: SafeArea(
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
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: black,
                            fontSize: 16.sp,
                          ),
                        ),
                        if (widget.showEdit == true)
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
                                decorationColor: primaryColor,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  _pinInputField(),
                  SizedBox(height: 24.h),
                  CustomPrimaryButton(
                    loading: ref.watch(otpScreenLoadingProvider),
                    disable: ref.watch(otpProvider).trim().length < 6 || showResendOption,
                    disabledOnTap: () {
                      if (ref.watch(otpProvider).trim().length < 6) {
                        context.showErrorSnackBar(message: Strings.pleaseEnterOTP);
                      } else {
                        context.showErrorSnackBar(message: Strings.otpExpiredMessage);
                      }
                    },
                    onTap: () => ref.watch(userLoggedInProvider) ? _changeMPIN() : _verifyOTP(),
                    label: Strings.contn,
                  ),
                  SizedBox(height: 18.h),
                  _resendWidget(),
                ],
              ),
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
        height: 50.h,
        width: 50.w,
        textStyle: TextStyle(
          fontSize: 16.sp,
        ),
        decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      focusedPinTheme: PinTheme(
        height: 50.h,
        width: 50.w,
        textStyle: TextStyle(
          fontSize: 16.sp,
        ),
        decoration: BoxDecoration(
            border: Border.all(
              color: primaryColor,
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      submittedPinTheme: PinTheme(
        height: 50.h,
        width: 50.w,
        textStyle: TextStyle(
          fontSize: 16.sp,
        ),
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
    int? expiryTime = ref.watch(expiryTimeProvider);
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
                seconds: expiryTime ?? 30,
                timerKey: ValueKey(retryCount),
              )
            : TextButton.icon(
                // onPressed: () {},
                onPressed: _resendOTP,
                icon: Icon(
                  Icons.timer_outlined,
                  color: black,
                  size: 20.sp,
                ),
                label: Text(
                  "Resend OTP",
                  style: TextStyle(
                    color: black,
                    fontSize: 14.sp,
                  ),
                ),
              ),
      ],
    );
  }

  void _verifyOTP() async {
    KeyboardHelper.hideKeyboard(context);

    final bool loading = ref.watch(otpScreenLoadingProvider);
    if (loading) {
      return;
    }

    final String phoneNumber = ref.read(phoneNumberProvider);

    final String? refCode = ref.watch(refCodeProvider);

    final request = ValidateOtpRequestModel(
      preValidationModel: PreValidationModel(
        validationType: "OTP",
        refCode: refCode,
        otpNumber: ref.watch(otpProvider).trim(),
        key: null,
      ),
      mobileNumber: phoneNumber,
    );

    ref.watch(otpScreenLoadingProvider.notifier).update((state) => true);

    final response = await getIt<ValidateOTP>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(otpScreenLoadingProvider.notifier).update((state) => false);

        context.showSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (ValidateOtpResponseModel success) async {
        if (success.status?.isSuccess == true) {
          ref.read(validateOTPResponseProvider.notifier).update((state) => success);

          // clear controllers
          ref.watch(oldPINProvider.notifier).update((state) => '');
          ref.watch(createPINProvider.notifier).update((state) => '');
          ref.watch(confirmPINProvider.notifier).update((state) => '');

          await _setData(
            authToken: success.body?.responseBody?.tokenData?.token,
            sessionId: success.body?.responseBody?.tokenData?.sessionId,
            mobileNumber: success.body?.responseBody?.mobileNumber,
            agentName: success.body?.responseBody?.agentName,
          );
          ref.watch(otpScreenLoadingProvider.notifier).update((state) => false);

          if (success.body?.responseBody?.isMPINSet == true && ref.watch(forgotPasswordSelectedProvider) == false) {
            await LocalDataHelper.storeMobileNumber(phoneNumber);
            final request = RegisterDeviceRequestModel(mobileNumber: phoneNumber);

            final response = await getIt<RegisterDevice>().call(request);

            response.fold((failure) {
              context.showSnackBar(message: Strings.globalErrorGenericMessageOne);
            }, (RegisterDeviceResponseModel success) async {
              if (success.status?.isSuccess == true) {
                await LocalDataHelper.storeDeviceToken(success.body!.responseBody!.deviceToken);
                context.pushReplacementNamed(AppRoutes.mpinLoginScreen);
              }
            });
          } else {
            context.pushReplacementNamed(AppRoutes.successScreen);
          }
        } else if (success.status?.isSuccess == false && success.status?.statusCode == ApiErrorCodes.otpAtMax) {
          ref.watch(otpScreenLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );

          setState(() {
            showResendOption = true;
          });
        } else if (success.status?.isSuccess == false && success.status?.statusCode == ApiErrorCodes.notFount) {
          ref.watch(otpScreenLoadingProvider.notifier).update((state) => false);

          context.pushReplacementNamed(AppRoutes.failureScreen);
        } else {
          ref.watch(otpScreenLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  void _changeMPIN() async {
    final bool loading = ref.watch(otpScreenLoadingProvider);
    if (loading) {
      return;
    }

    final String? refCode = ref.watch(refCodeProvider);
    ChangeMPINRequestModel request = ChangeMPINRequestModel(
      mPIN: MPIN(
        oldMPIN: ref.watch(oldPINProvider),
        newMPIN: ref.watch(createPINProvider),
        confirmNewMPIN: ref.watch(confirmPINProvider),
      ),
      otp: OTP(
        refCode: refCode ?? "",
        otpNumber: ref.watch(otpProvider).trim(),
      ),
    );

    ref.watch(otpScreenLoadingProvider.notifier).update((state) => true);

    final response = await getIt<ChangeMPIN>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(otpScreenLoadingProvider.notifier).update((state) => false);

        context.showSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (ChangeMPINResponseModel success) async {
        debugPrint("success in otp screen : $success");
        if (success.status?.isSuccess == true) {
          ref.read(changeMPINResponseProvider.notifier).update((state) => success);
          ref.read(refCodeProvider.notifier).update((state) => success.body?.responseBody?.refCode);

          // await _setData(
          //   authToken: success.body?.responseBody?.tokenData?.token,
          //   sessionId: success.body?.responseBody?.tokenData?.sessionId,
          // );

          context.showSnackBar(message: Strings.mpinChangeSuccess);

          ref.watch(userLoggedInProvider.notifier).update((state) => false);

          // clear controller
          ref.watch(oldPINProvider.notifier).update((state) => '');
          ref.watch(createPINProvider.notifier).update((state) => '');
          ref.watch(confirmPINProvider.notifier).update((state) => '');

          await LocalDataHelper.storeSessionId("");

          ref.watch(otpScreenLoadingProvider.notifier).update((state) => false);

          // context.go(AppRoutes.splashScreen);
          callLaunchDetailsApi(
            context: context,
            ref: ref,
          );
        } else if (success.status?.isSuccess == false && success.status?.statusCode == ApiErrorCodes.otpAtMax) {
          ref.watch(otpScreenLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );

          setState(() {
            showResendOption = true;
          });
        } else {
          ref.watch(otpScreenLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  void _resendOTP() async {
    if (retryCount == 2) {
      debugPrint("retry count $retryCount");
      context.showErrorSnackBar(message: Strings.maximumOTPRetryReached);

      return;
    }

    final String? refCode = ref.watch(refCodeProvider);

    final ResendOtpRequestModel request = ResendOtpRequestModel(refCode: refCode);

    debugPrint("request resed otp to json: ${request.toJson()}");

    final response = await getIt<ResendOTP>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (ResendOtpResponseModel success) async {
        if (success.status?.isSuccess == true) {
          ref.read(resendOTPProvider.notifier).update((state) => success);
          ref.read(refCodeProvider.notifier).update((state) => success.body?.responseBody?.refCode);
          ref.read(expiryTimeProvider.notifier).update((state) => success.body?.responseBody?.tokenData?.expiry);

          String expiryTime = DateHelper.formatExpiryTime(success.body?.responseBody?.tokenData?.expiry ?? 60);

          debugPrint("expiryTime: $expiryTime");

          context.showSnackBar(message: "${Strings.otpSentSuccessfully} $expiryTime");

          retryCount++;
          otpController.text = '';
          showResendOption = false;
          setState(() {});
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> _setData(
      {required String? authToken,
      required String? sessionId,
      required String? mobileNumber,
      required String? agentName}) async {
    await LocalDataHelper.storeAuthToken(authToken);
    await LocalDataHelper.storeSessionId(sessionId);
    await LocalDataHelper.storeMobileNumber(mobileNumber);
    await LocalDataHelper.storeAgentName(agentName);

    ref.watch(sessionIdProvider.notifier).update((state) => sessionId ?? "");
  }
}
