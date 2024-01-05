import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String title;
  final String value;

  const InfoWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: textGrayColor2,
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: black,
          ),
        ),
      ],
    );
  }
}
