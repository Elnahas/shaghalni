import 'package:intl/intl.dart';

class DateHelper {
  static String formatCustomDate(DateTime dateTime, {String format = 'dd MMMM yyyy'}) {
    return DateFormat(format).format(dateTime);
  }
}