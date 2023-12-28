import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPrimaryButton extends StatelessWidget {
  final void Function() primaryBtnonTap;
  final String primaryBtnlabel;
  final double? primaryBtnHeight;
  final double? primaryBtnWidth;

  const AppPrimaryButton({
    super.key,
    required this.primaryBtnonTap,
    required this.primaryBtnlabel,
    this.primaryBtnHeight,
    this.primaryBtnWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: primaryBtnHeight ?? 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: orange,
          disabledBackgroundColor: disabledButtonColor,
          disabledForegroundColor: textGrayColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29),
          ),
          shadowColor: Colors.transparent,
        ),
        onPressed: primaryBtnonTap,
        child: Text(
          primaryBtnlabel,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
