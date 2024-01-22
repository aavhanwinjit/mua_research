import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class StatusChip extends StatelessWidget {
  const StatusChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: lightYellow,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_circle,
            color: darkYellow,
          ),
          Text(
            Strings.chipStatusIDMissing,
            style: TextStyle(
              color: darkYellow,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
