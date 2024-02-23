import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectPINorBiometricScreen extends ConsumerWidget {
  const SelectPINorBiometricScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBarHelper.showCustomAppbar(context: context, title: ""),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                ImageConstants.pinFaceIdImage,
                width: double.infinity,
                height: 150.h,
              ),
              const SizedBox(height: 25),
              Text(
                Strings.chooseFasterWayToLogIn,
                style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomPrimaryButton(
                label: Strings.createPinAndBiometric,
                disable: false,
                onTap: () {
                  ref.read(biometricSelectedProvider.notifier).update((state) => true);
                  context.pushNamed(AppRoutes.createPINScreen);
                },
              ),
              const SizedBox(height: 20),
              CustomOutlineButton(
                label: Strings.createPinOnly,
                disable: false,
                primary: true,
                onTap: () {
                  ref.read(biometricSelectedProvider.notifier).update((state) => false);
                  context.pushNamed(AppRoutes.createPINScreen);
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
