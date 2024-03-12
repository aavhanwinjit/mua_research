import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/providers/session_id_provider.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/login_otp/presentation/providers/login_provider.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/features/mpin_face_id/data/models/verify_mpin/request/verify_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/verify_mpin/response/verify_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/verify_mpin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/biometric_auth_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/registration_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/masked_pin_textfield.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/pin_keypad.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:ekyc/features/splash_screen/presentation/providers/launch_details_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ConfirmPINScreen extends ConsumerStatefulWidget {
  const ConfirmPINScreen({super.key});

  @override
  ConsumerState<ConfirmPINScreen> createState() => _ConfirmPINScreenState();
}

class _ConfirmPINScreenState extends ConsumerState<ConfirmPINScreen> with BiometricAuthMixin, RegistrationMixin {
  bool successVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBarHelper.showCustomAppbar(context: context, title: ""),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                Strings.confirmPin,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            //Subtitle
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                Strings.createPinSubtitle,
                style: TextStyle(),
              ),
            ),
            const SizedBox(height: 50),
            MaskedPinTextfield(provider: confirmPINProvider),
            const SizedBox(height: 30),
            successVal
                ? Container(
                    color: primaryGreenColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: const Center(
                      child: Text(
                        "PIN successfully set. Your account is now secured.",
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(height: 10),
            const SizedBox(height: 10),
            //PIN keypad
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: PinKeypad(
                provider: confirmPINProvider,
                callback: () => Future.delayed(const Duration(seconds: 2), () {
                  ref.watch(userLoggedInProvider)
                      ? _verifyMPIN()
                      : setAgentMPIN(
                          context: context,
                          ref: ref,
                          onSuccess: () {
                            successVal = true;
                            setState(() {});
                          },
                          biometricAuth: _biometricAuthentication,
                        );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _biometricAuthentication() async {
    await setFingerPrint(
      context: context,
      ref: ref,
      onSuccess: () {
        successVal = true;
        setState(() {});
      },
      successNavigation: () async {
        ref.watch(isFPLoginProvider.notifier).update((state) => true);

        context.pushNamed(AppRoutes.onboardSuccessScreen);
      },
    );

    // await authenticateWithBiometric(
    //   onAuthenticated: () async {
    //     await setFingerPrint(
    //       context: context,
    //       ref: ref,
    //       onSuccess: () {
    //         successVal = true;
    //         setState(() {});
    //       },
    //       successNavigation: () {
    //         context.pushNamed(AppRoutes.onboardSuccessScreen);
    //       },
    //     );
    //   },
    //   onAuthenticationFailure: (String error) {
    //     context.pushNamed(AppRoutes.onboardSuccessScreen);
    //     context.showErrorSnackBar(message: error);
    //   },
    // );
  }

  void _verifyMPIN() async {
    VerifyMPINRequestModel request = VerifyMPINRequestModel(
      isExistingCustomer: true,
      oldMPIN: ref.read(oldPINProvider),
      newMPIN: ref.read(createPINProvider),
      confirmNewMPIN: ref.read(confirmPINProvider),
    );

    final response = await getIt<VerifyMPIN>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (VerifyMPINResponseModel success) async {
        debugPrint("success in login screen : $success");
        if (success.status?.isSuccess == true) {
          ref.read(verifyMPINResponseProvider.notifier).update((state) => success);
          ref.read(refCodeProvider.notifier).update((state) => success.body?.responseBody?.refCode);

          // await _setData(
          //   authToken: success.body?.responseBody?.tokenData?.token,
          //   sessionId: success.body?.responseBody?.tokenData?.sessionId,
          // );

          context.showSnackBar(message: Strings.otpSentSuccessfully);
          context.pushNamed(AppRoutes.otpScreen);
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> _setData({required String? authToken, required String? sessionId}) async {
    await LocalDataHelper.storeAuthToken(authToken);
    await LocalDataHelper.storeSessionId(sessionId);

    ref.watch(sessionIdProvider.notifier).update((state) => sessionId ?? "");
  }
}
