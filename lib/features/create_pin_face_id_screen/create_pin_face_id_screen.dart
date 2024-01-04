import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePINFaceIdScreen extends StatelessWidget {
  const CreatePINFaceIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: BackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(
                ImageConstants.pinFaceIdImage,
                width: double.infinity,
                height: 150.h,
              ),
              SizedBox(height: 25),
              Text(
                "Choose a faster way to log in on this device",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CustomPrimaryButton(
                label: "Create PIN & Face ID",
                disable: false,
                onTap: () {
                  context.pushNamed(AppRoutes.createPINandFaceIdScreen);
                },
              ),
              SizedBox(height: 20),
              CustomSecondaryButton(
                label: 'Create PIN Only',
                disable: false,
                onTap: () {},
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
