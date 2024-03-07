import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/biometric_auth_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/masked_pin_textfield.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/pin_keypad.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/registration_mixin.dart';
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
                  setAgentMPIN(
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
      successNavigation: () {
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
}
