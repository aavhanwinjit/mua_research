import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarHelper {
  static customAppBar({
    required String title,
    required Widget subTitleWidget,
    Widget? leading,
  }) {
    return AppBar(
      leading: leading,
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 20.h),
          Image.asset(
            ImageConstants.pngLogo,
            width: 68.w,
          ),
          SizedBox(height: 19.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 30.sp,
              color: black,
            ),
          ),
          SizedBox(height: 8.h),
          subTitleWidget,
        ],
      ),
      elevation: 0,
      backgroundColor: transparent,
      toolbarHeight: 150,
    );
  }
}
