import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardSuccessScreen extends StatelessWidget {
  const OnboardSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlueColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 2),
          Image.asset(ImageConstants.successImage),
          SizedBox(height: 20),
          Text(
            "Congratulations,\nArjun Kumar!",
            style: TextStyle(
              color: white,
              fontSize: 32.sp,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "You've successfully completed your onboarding.",
              style: TextStyle(
                color: white,
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomPrimaryButton(
              label: "Go to Dashboard",
              disable: false,
              onTap: () => context.go(AppRoutes.dashboardScreen),
            ),
          ),
        ],
      ),
    );
  }
}
