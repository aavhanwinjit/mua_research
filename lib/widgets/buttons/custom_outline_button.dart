import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final VoidCallback? disabledOnTap;
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
    this.disabledOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: 60.h,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: disable == true
              ? disabledButtonColor
              : primary == true
                  ? primaryColor
                  : white,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      onPressed: disable == false ? onTap : disabledOnTap ?? () {},
      child: Text(
        label,
        style: TextStyle(
          color: disable == true
              ? textGrayColor
              : primary == true
                  ? primaryColor
                  : white,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
