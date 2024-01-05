import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarHelper {
  static AppBar showCustomAppbar({
    required BuildContext context,
    required String title,
    Function()? onPressed,
    IconData? backIcon,
    bool? blueBackground,
  }) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: blueBackground == true ? white : black,
          fontWeight: FontWeight.bold,
          fontSize: 20.sp,
        ),
      ),
      leading: IconButton(
        onPressed: onPressed ??
            () {
              context.pop();
            },
        icon: Icon(
          backIcon ?? Icons.chevron_left,
          color: blueBackground == true ? white : black,
        ),
      ),
    );
  }
}
