import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class StatusChip extends StatelessWidget {
  final String? status;

  const StatusChip({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: _getStatusCardColor(),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (status != null) ...[
            _getChipIcon(),
            const SizedBox(width: 5),
          ],
          Text(
            _getStatusString() ?? "-",
            style: TextStyle(
              color: _getTextColor(),
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getChipIcon() {
    if (status == Strings.apiChipStatusCompleted) {
      return const Icon(
        Icons.check_circle,
        color: primaryGreenColor,
      );
    } else {
      return const Icon(
        Icons.help,
        color: darkYellow,
      );
    }
  }

  String? _getStatusString() {
    String? statusString;

    if (status == Strings.apiChipStatusIDMissing) {
      statusString = Strings.chipStatusIDMissing;
    } else if (status == Strings.apiChipStatusPOAMissing) {
      statusString = Strings.chipStatusPOAMissing;
    } else if (status == Strings.apiChipStatusPORMissing) {
      statusString = Strings.chipStatusPORMissing;
    } else if (status == Strings.apiChipStatusCompleted) {
      statusString = Strings.chipStatusCompleted;
    }
    return statusString;
  }

  Color _getTextColor() {
    if (status == Strings.apiChipStatusCompleted) {
      return primaryGreenColor;
    } else {
      return darkYellow;
    }
  }

  Color _getStatusCardColor() {
    if (status == Strings.apiChipStatusCompleted) {
      return lightGreenColor;
    } else {
      return lightYellow;
    }
  }
}
