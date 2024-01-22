import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class NoDataBody extends StatelessWidget {
  const NoDataBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImageConstants.emptyScreenImage,
          ),
          Text(
            Strings.emptyDashboardText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: textGrayColor2,
            ),
          ),
        ],
      ),
    );
  }
}
