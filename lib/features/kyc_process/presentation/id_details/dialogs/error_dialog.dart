import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ErrorDialog extends ConsumerWidget {
  const ErrorDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Invalid quote number",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              "Please enter valid quote number",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: black,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 6.h),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomPrimaryButton(
                label: "Back",
                disable: false,
                onTap: () {
                  context.pushReplacementNamed(AppRoutes.dashboardScreen);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
