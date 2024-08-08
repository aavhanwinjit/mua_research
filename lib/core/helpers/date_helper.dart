import 'package:flutter/cupertino.dart';

class DateHelper {
  static String formatExpiryTime(int seconds) {
    debugPrint("inside expiry date format function");
    if (seconds < 60) {
      return '$seconds sec';
    } else if (seconds < 3600) {
      int minutes = seconds ~/ 60;
      int remainingSeconds = seconds % 60;
      return remainingSeconds == 0 ? '$minutes min' : '$minutes min $remainingSeconds sec';
    } else {
      int hours = seconds ~/ 3600;
      int remainingMinutes = (seconds % 3600) ~/ 60;
      int remainingSeconds = seconds % 60;
      return remainingMinutes == 0 && remainingSeconds == 0
          ? '$hours hr'
          : remainingSeconds == 0
              ? '$hours hr $remainingMinutes min'
              : '$hours hr $remainingMinutes min $remainingSeconds sec';
    }
  }
}
