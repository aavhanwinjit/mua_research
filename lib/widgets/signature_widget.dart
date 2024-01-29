import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class SignatureWidget extends StatelessWidget {
  const SignatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //info box heading
          Text(
            "Arjun Kumar",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Tue Jan 18 11:55:50 IST 2023",
            style: TextStyle(
              color: textGrayColor2,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          DottedBorder(
            color: borderColor,
            radius: const Radius.circular(7),
            borderType: BorderType.RRect,
            dashPattern: const <double>[8, 4],
            child: Center(
              child: Image.asset(
                ImageConstants.signatureImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
