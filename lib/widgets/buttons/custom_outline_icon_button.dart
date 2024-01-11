import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomOutlineIconButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final bool? disable;
  final bool? primary;
  final String iconString;

  const CustomOutlineIconButton({
    super.key,
    required this.label,
    this.onTap,
    this.height,
    this.width,
    this.disable = false,
    this.primary = true,
    required this.iconString,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: 60.h,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: primary == true ? primaryColor : white,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      onPressed: disable == false ? onTap : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(iconString),
            color: primaryColor,
          ),
          SizedBox(width: 5),
          Text(
            label,
            style: TextStyle(
              color: primary == true ? primaryColor : white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
