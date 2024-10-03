import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUpdatePopUp extends ConsumerStatefulWidget {
  final bool forceUpdate;
  final String appStoreLink;
  final String playStoreLink;

  const AppUpdatePopUp({
    super.key,
    required this.forceUpdate,
    required this.appStoreLink,
    required this.playStoreLink,
  });
  @override
  ConsumerState<AppUpdatePopUp> createState() => _AppUpdatePopUpState();
}

class _AppUpdatePopUpState extends ConsumerState<AppUpdatePopUp> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      backgroundColor: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            Strings.appUpdateAvailable,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: black),
          ),
          SizedBox(height: 15.h),
          const Text(
            Strings.newAppVersionAvailable,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 25.h),
          CustomPrimaryButton(
            label: Strings.updateNow,
            onTap: () async {
              if (Platform.isAndroid) {
                if (widget.playStoreLink.isNotEmpty) {
                  await launchUrl(
                    Uri.parse(widget.playStoreLink),
                    mode: LaunchMode.externalApplication,
                  );
                }
              } else if (Platform.isIOS) {
                if (widget.appStoreLink.isNotEmpty) {
                  await launchUrl(
                    Uri.parse(widget.appStoreLink),
                    mode: LaunchMode.externalApplication,
                  );
                }
              }
            },
          ),
          if (!widget.forceUpdate) SizedBox(height: 20.h),
          if (!widget.forceUpdate)
            GestureDetector(
              onTap: () async {
                Navigator.of(context).pop(true);
              },
              child: Text(
                Strings.skip,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

extension DateHelper on DateTime {
  bool isSameDate(DateTime other) => year == other.year && month == other.month && day == other.day;
}
