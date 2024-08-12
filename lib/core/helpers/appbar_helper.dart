import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      leading: BackButton(
        onPressed: onPressed ??
            () {
              context.pop();
            },
        color: blueBackground == true ? white : black,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        // statusBarColor: Colors.red,
        statusBarIconBrightness:
            blueBackground == true ? Brightness.light : Brightness.dark, // For Android (dark icons)
        statusBarBrightness: blueBackground == true ? Brightness.light : Brightness.dark, // For iOS (dark icons)
      ),
    );
  }
}
