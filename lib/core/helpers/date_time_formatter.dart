import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeFormatter {
  static final _applicationCardDateTimeFormat = DateFormat('dd/MM/yy • hh:mm a');
  static final _monthShortDateFormat = DateFormat('dd MMM yyyy');
  static final _documentDateFormat = DateFormat('yyyy-MM-dd');
  static final _pdfDateFormat = DateFormat('dd/MM/yy HH:mm:ss');

  static String getApplicationCardDateTime(DateTime? dateTime) {
    return dateTime != null ? _applicationCardDateTimeFormat.format(dateTime) : "";
  }

  static String getShortMonthDateTime(DateTime? dateTime) {
    return dateTime != null ? _monthShortDateFormat.format(dateTime) : "";
  }

  static String getDocumentDateTime(DateTime? dateTime) {
    return dateTime != null ? _documentDateFormat.format(dateTime) : "";
  }

  static String getpdfDateTime(DateTime? dateTime) {
    return dateTime != null ? _pdfDateFormat.format(dateTime) : "";
  }

  static String formatSignatureDate(DateTime? dateTime) {
    if (dateTime != null) {
      debugPrint("dateTime: $dateTime");
      String formattedDate = DateFormat('EEE MMM dd hh:mm:ss').format(dateTime);

      formattedDate += ' ${dateTime.year}';

      return formattedDate;
    }

    return '';
  }
}
