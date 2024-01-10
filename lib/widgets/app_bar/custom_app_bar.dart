import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Widget subTitleWidget;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.subTitleWidget,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              ImageConstants.pngLogo,
              width: 68.w,
            ),
          ],
        ),
        SizedBox(height: 25.h),
        Text(
          title,
          style: TextStyle(
            fontFamily: Strings.isodoraFont,
            fontWeight: FontWeight.bold,
            fontSize: 30.sp,
            color: black,
          ),
        ),
        SizedBox(height: 8.h),
        subTitleWidget,
        SizedBox(height: 40.h),
      ],
    );
  }
}
