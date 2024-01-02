import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final bool? disable;

  const CustomPrimaryButton({
    super.key,
    required this.label,
    this.onTap,
    this.height,
    this.width,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          disabledBackgroundColor: disabledButtonColor,
          foregroundColor: white,
          disabledForegroundColor: textGrayColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29),
          ),
          shadowColor: Colors.transparent,
        ),
        onPressed: disable == true ? null : onTap,
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
