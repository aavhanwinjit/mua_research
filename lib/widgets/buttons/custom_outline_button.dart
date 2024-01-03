import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOutlineButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final bool? disable;
  final bool? primary;

  const CustomOutlineButton({
    super.key,
    required this.label,
    this.onTap,
    this.height,
    this.width,
    this.disable = false,
    this.primary = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary == true ? primaryColor : white,
          side: BorderSide(width: 1.0, color: primary == true ? primaryColor : Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29),
          ),
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
