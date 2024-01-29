import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmPINScreen extends StatefulWidget {
  const ConfirmPINScreen({super.key});

  @override
  State<ConfirmPINScreen> createState() => _ConfirmPINScreenState();
}

class _ConfirmPINScreenState extends State<ConfirmPINScreen> {
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
                "Confirm PIN",
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
                "You'll use it to securely unlock and access your app, so please don't share it with anyone.",
                style: TextStyle(),
              ),
            ),
            const SizedBox(height: 50),
            Row(
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
            ),
            const SizedBox(height: 30),
            pin.length == 6
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: List.generate(
                    10,
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
                              if (index != 9) {
                                setState(() {
                                  pin += "${index + 1}";
                                });
                              } else {
                                setState(() {
                                  pin += "0";
                                });
                              }
                              debugPrint(pin);
                              if (pin.length == 6) {
                                //navigate
                                Future.delayed(const Duration(seconds: 2), () {
                                  context.pushNamed(AppRoutes.onboardSuccessScreen);
                                });
                              }
                            }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text(
                            index == 9 ? "0" : "${index + 1}",
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
            ),
          ],
        ),
      ),
    );
  }
}
