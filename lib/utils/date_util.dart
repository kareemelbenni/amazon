import 'package:intl/intl.dart';

class DateUtil {
  static final DateUtil _singleton = new DateUtil._internal();

  factory DateUtil() {
    return _singleton;
  }

  DateUtil._internal();

  String getTime(date) {
    if (date is String) {
      date = parseDateTime(date);
    }

    if (!(date is DateTime)) return null;
    return new DateFormat("hh:mm aaa").format(date);
  }

  String getDate(date) {
    if (date is String) {
      date = parseDateTime(date);
    }

    if (!(date is DateTime)) return null;
    return new DateFormat("yyyy-MM-dd").format(date);
  }

  String getDateTime(DateTime date) {
    return new DateFormat("yyyy-MM-dd hh:mm aaa").format(date);
  }

  DateTime getDateFromEpoch(num time) {
    return new DateTime.fromMillisecondsSinceEpoch(time);
  }

  DateTime parseDateTime(String date) {
    if (date == null) return DateTime.now();
//    return new DateFormat('yyyy-MM-dd hh:mm:ss').parse(date);
    return new DateFormat('yyyy-MM-dd hh:mm').parse(date);
  }

  DateTime parseDate(String date) {
    if (date == null) return DateTime.now();
//    return new DateFormat('yyyy-MM-dd hh:mm:ss').parse(date);
    return new DateFormat('yyyy-MM-dd').parse(date);
  }
}
