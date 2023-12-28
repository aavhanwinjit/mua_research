import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 25,
              ),
              child: Image.asset(ImageConstant.logoWithName),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                "Enter the OTP sent to",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Text(
                    "xxxxxx4567",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        color: primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //OTP input
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Pinput(
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
                  setState(() {});
                },
                onCompleted: (String? value) {
                  setState(() {});
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CustomMaterialButton(
                      borderRadius: 100,
                      btnColor: otpController.text.length == 6
                          ? primaryColor
                          : disabledButtonColor,
                      callback: () {
                        otpController.text.length == 6
                            ? otpController.text == "123456"
                                ? context.go(AppRoutes.successScreen)
                                : context.go(AppRoutes.failureScreen)
                            : null;
                      },
                      btnText: "Continue",
                      btnTextColor: otpController.text.length == 6
                          ? Colors.white
                          : disabledTextColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Text("Didn't received it?"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Retry in 00:30",
                      style: TextStyle(
                        color: secondaryTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
