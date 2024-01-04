import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final bool? disable;

  const CustomSecondaryButton({
    super.key,
    required this.label,
    this.onTap,
    this.height,
    this.width,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: 60.h,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: disable == false ? primaryColor : disabledButtonColor,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      onPressed: disable == false ? onTap : null,
      child: Text(
        label,
        style: TextStyle(
          color: disable == false ? primaryColor : textGrayColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
