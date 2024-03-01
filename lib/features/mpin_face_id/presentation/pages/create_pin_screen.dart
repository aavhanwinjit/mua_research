import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreatePinScreen extends ConsumerStatefulWidget {
  const CreatePinScreen({super.key});

  @override
  ConsumerState<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends ConsumerState<CreatePinScreen> {
  String pin = "";

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
                Strings.createPin,
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
            const SizedBox(height: 80),
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
                          context.pushNamed(AppRoutes.confirmPINScreen);
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
                        ref.watch(createPINProvider.notifier).update((state) => pin);
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
    final String pin = ref.watch(createPINProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        6,
        (index) {
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
        },
      ),
    );
  }

  // Widget _pinKeyboard() {
  //   return PinKeyboard(
  //     controller: pinKeyboardController,
  //     length: 6,
  //     enableBiometric: false,
  //     iconBiometricColor: Colors.blue[400],
  //     textColor: primaryBlueColor,
  //     fontSize: 36.sp,
  //     onChange: (pin) {
  //       debugPrint("pin onchange: $pin");
  //       ref.read(createPINProvider.notifier).update((state) => state);
  //     },
  //     onConfirm: (pin) {
  //       debugPrint("pin onconfirm: $pin");
  //       ref.read(createPINProvider.notifier).update((state) => state);
  //     },
  //     onBiometric: () {},
  //   );
  // }

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

                    ref.watch(createPINProvider.notifier).update((state) => pin);

                    if (pin.length == 6) {
                      //navigate
                      context.pushNamed(AppRoutes.confirmPINScreen);
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
}
