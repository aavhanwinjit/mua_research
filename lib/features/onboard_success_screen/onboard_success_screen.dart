import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OnboardSuccessScreen extends ConsumerWidget {
  const OnboardSuccessScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setAgentMPINResponse = ref.watch(setAgentMpinResponseProvider);

    return Scaffold(
      backgroundColor: primaryBlueColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 140.w),
            child: Image.asset(ImageConstants.successImage),
          ),
          const SizedBox(height: 20),
          Text(
            "Congratulations,\n${setAgentMPINResponse?.body?.responseBody?.agentName ?? ""}!",
            style: TextStyle(
              color: white,
              fontSize: 32.sp,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
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
          const Spacer(),
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
