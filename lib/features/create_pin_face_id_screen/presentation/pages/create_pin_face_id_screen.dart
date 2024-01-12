import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePINFaceIdScreen extends StatelessWidget {
  const CreatePINFaceIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              Spacer(),
              Image.asset(
                ImageConstants.pinFaceIdImage,
                width: double.infinity,
                height: 150.h,
              ),
              SizedBox(height: 25),
              Text(
                Strings.chooseFasterWayToLogIn,
                style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CustomPrimaryButton(
                label: Strings.createPinAndFaceId,
                disable: false,
                onTap: () {
                  context.pushNamed(AppRoutes.createPINandFaceIdScreen);
                },
              ),
              SizedBox(height: 20),
              CustomOutlineButton(
                label: Strings.createPinOnly,
                disable: false,
                primary: true,
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
