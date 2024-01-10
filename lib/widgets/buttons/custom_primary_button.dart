import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final VoidCallback? disabledOnTap;
  final double? height;
  final double? width;
  final bool? disable;

  const CustomPrimaryButton({
    super.key,
    required this.label,
    required this.onTap,
    this.height,
    this.width,
    this.disable = false,
    this.disabledOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: 60.h,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      color: disable == false ? primaryColor : disabledButtonColor,
      onPressed: disable == false ? onTap : disabledOnTap ?? () {},
      child: Text(
        label,
        style: TextStyle(
          color: disable == false ? white : textGrayColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
