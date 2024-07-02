import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class DateHelper {
  static String formatCustomDate(DateTime dateTime, {String format = 'dd MMMM yyyy'}) {
    return DateFormat(format).format(dateTime);
  }

    static String formatTimeAgo(DateTime date, {String locale = 'en'}) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 7) {
      return DateFormat.yMMMd().format(date);
    } else {
      return timeago.format(date, locale: locale);
    }
  }
}