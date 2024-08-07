import 'package:intl/intl.dart';

class DateTimeFormatter {
  static final _applicationCardDateTimeFormat = DateFormat('dd/MM/yy • hh:mm a');

  static String getApplicationCardDateTime(DateTime? dateTime) {
    return dateTime != null ? _applicationCardDateTimeFormat.format(dateTime) : "";
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
