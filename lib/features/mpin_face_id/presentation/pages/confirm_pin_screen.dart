import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/biometric_auth_mixin.dart';
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
  String pin = "";
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
            _maskedPinTextField(),
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
            _pinKeypad(),
            // pin keypad last row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Container(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: primaryBlueColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        if (pin.length < 6) {
                          setState(() {
                            pin += "0";
                          });

                          debugPrint(pin);
                        }

                        ref.watch(createPINProvider.notifier).update((state) => pin);

                        if (pin.length == 6) {
                          //navigate
                          Future.delayed(const Duration(seconds: 2), () {
                            setAgentMPIN(
                              context: context,
                              ref: ref,
                              onSuccess: () {
                                successVal = true;
                                setState(() {});
                              },
                              biometricAuth: _biometricAuthentication,
                            );
                          });
                        }
                        // if (pin.length < 6) {
                        //   if (index != 9) {
                        //     ref.watch(createPINProvider.notifier).update(
                        //           (state) => "$state${index + 1}",
                        //         );
                        //   } else {
                        //     ref.watch(createPINProvider.notifier).update(
                        //           (state) => "${state}0",
                        //         );
                        //   }
                        //   debugPrint(pin);

                        //   if (pin.length == 6) {
                        //     context.pushNamed(AppRoutes.confirmPINScreen);
                        //   }
                        // }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        "0",
                        style: TextStyle(
                          color: primaryBlueColor,
                          fontSize: 36.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: primaryBlueColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        if (pin.isNotEmpty) {
                          setState(() {
                            pin = pin.substring(0, pin.length - 1);
                          });
                          debugPrint(pin);
                        }
                        ref.watch(confirmPINProvider.notifier).update((state) => pin);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.backspace,
                        color: primaryBlueColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _maskedPinTextField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index + 1 <= pin.length ? primaryBlueColor : white,
              border: Border.all(
                color: primaryBlueColor,
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _pinKeypad() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: List.generate(
            9,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: primaryBlueColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: MaterialButton(
                  onPressed: () {
                    if (pin.length < 6) {
                      setState(() {
                        pin += "${index + 1}";
                      });

                      debugPrint(pin);
                    }

                    ref.watch(confirmPINProvider.notifier).update((state) => pin);

                    if (pin.length == 6) {
                      //navigate
                      Future.delayed(const Duration(seconds: 2), () {
                        setAgentMPIN(
                          context: context,
                          ref: ref,
                          onSuccess: () {
                            successVal = true;
                            setState(() {});
                          },
                          biometricAuth: _biometricAuthentication,
                        );
                      });
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      color: primaryBlueColor,
                      fontSize: 36.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
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
