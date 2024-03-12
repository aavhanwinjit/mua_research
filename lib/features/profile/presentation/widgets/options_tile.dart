import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class OptionsTile extends StatelessWidget {
  final String icon;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final Function()? onTap;

  const OptionsTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: ImageIcon(
        AssetImage(icon),
        size: 20.sp,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14.sp,
          color: black,
        ),
      ),
      subtitle: subtitle == null
          ? null
          : Text(
              subtitle ?? "",
              style: TextStyle(
                fontSize: 12.sp,
                color: textGrayColor2,
              ),
            ),
      trailing: trailing,
    );
  }
}
