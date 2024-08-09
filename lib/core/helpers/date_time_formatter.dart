import 'package:intl/intl.dart';

class DateTimeFormatter {
  static final _applicationCardDateTimeFormat = DateFormat('dd/MM/yy • hh:mm a');
  static final _monthShortDateFormat = DateFormat('dd MMM yyyy');

  static String getApplicationCardDateTime(DateTime? dateTime) {
    return dateTime != null ? _applicationCardDateTimeFormat.format(dateTime) : "";
  }

  static String getShortMonthDateTime(DateTime? dateTime) {
    return dateTime != null ? _monthShortDateFormat.format(dateTime) : "";
  }

  static String formatSignatureDate(DateTime? dateTime) {
    if (dateTime != null) {
      String formattedDate = DateFormat('EEE MMM dd HH:mm:ss').format(dateTime);

      formattedDate += ' ${dateTime.year}';

      return formattedDate;
    }

    return '';
  }
}
