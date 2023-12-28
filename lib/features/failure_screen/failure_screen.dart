import 'package:ekyc/core/constants/constants.dart';
import 'package:ekyc/core/utils/image_constant.dart';
import 'package:ekyc/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryBlueColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(ImageConstant.failureImage),
            SizedBox(height: 25),
            Text(
              "Oops!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 15,
              ),
              child: Text(
                "It seems like this mobile number isn't registered. If you're having trouble, feel free to contact your MUA for assistance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CustomMaterialButton(
                      btnColor: primaryColor,
                      callback: () => context.pop(),
                      btnText: "Got it!",
                      btnTextColor: Colors.white,
                      borderRadius: 100,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
