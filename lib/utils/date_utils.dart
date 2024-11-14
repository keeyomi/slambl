import 'package:intl/intl.dart';

class Date {

  static DateTime _now() => DateTime.now();

  static int getDaysInMonth({int? year, int? month}) => DateTime(year ?? _now().year, month ?? _now().month + 1, 0).day;

  static int getDayInToday() => DateTime(_now().year, _now().month + 1, _now().day).day;

  static int getWeekday({int? year, int? month, int? day}) => DateTime(year ?? _now().year, month ?? _now().month, day ?? _now().day).weekday;

  static DateTime getDateOfWeekday({int? year, int? month, int? day}) => DateTime(year ?? _now().year, month ?? _now().month, day ?? _now().day);

  static String getStringWeekday({int? year, int? month, int? day}) => DateFormat('E').format(getDateOfWeekday(year: year, month: month, day: day));
}