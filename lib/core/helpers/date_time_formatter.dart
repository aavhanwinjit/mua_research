import 'package:intl/intl.dart';

class DateTimeFormatter {
  static final _applicationCardDateTimeFormat = DateFormat('dd/MM/yy • hh:mm a');

  static String getApplicationCardDateTime(DateTime? dateTime) {
    return dateTime != null ? _applicationCardDateTimeFormat.format(dateTime) : "";
  }
}
