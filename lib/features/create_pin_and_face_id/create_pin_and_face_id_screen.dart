import 'package:flutter/material.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:go_router/go_router.dart';

class CreatePINandFaceIdScreen extends StatefulWidget {
  const CreatePINandFaceIdScreen({super.key});

  @override
  State<CreatePINandFaceIdScreen> createState() =>
      _CreatePINandFaceIdScreenState();
}

class _CreatePINandFaceIdScreenState extends State<CreatePINandFaceIdScreen> {
  String pin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: BackButton(
          color: black,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Create PIN",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "You'll use it to securely unlock and access your app, so please don't share it with anyone.",
                style: TextStyle(),
              ),
            ),
            SizedBox(height: 50),
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
            SizedBox(height: 80),
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
                              print(pin);
                              if (pin.length == 6) {
                                //navigate
                                context.pushNamed(AppRoutes.confirmPINScreen);
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
