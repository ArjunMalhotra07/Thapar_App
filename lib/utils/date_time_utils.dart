import 'package:intl/intl.dart';

class DateTimeUtils {
  /// Returns formatted date like "12th October, 2025"
  static String getFormattedDate({DateTime? dateTime}) {
    final date = dateTime ?? DateTime.now();
    final months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return '${date.day}${_getDaySuffix(date.day)} ${months[date.month - 1]}, ${date.year}';
  }

  /// Returns formatted time like "3:45 PM"
  static String getFormattedTime({DateTime? dateTime}) {
    final time = dateTime ?? DateTime.now();
    final hour = time.hour > 12
        ? time.hour - 12
        : (time.hour == 0 ? 12 : time.hour);
    final minute = time.minute.toString().padLeft(2, '0');
    final period = time.hour >= 12 ? 'PM' : 'AM';
    return '$hour:$minute $period';
  }

  /// Returns date in yyyy-MM-dd format for API calls
  static String getApiFormattedDate({DateTime? dateTime}) {
    final date = dateTime ?? DateTime.now();
    return DateFormat('yyyy-MM-dd').format(date);
  }

  /// Converts hour and date to ISO 8601 format with Z suffix
  static String getIsoFormattedDateTime({
    required int hour,
    DateTime? date,
  }) {
    final selectedDate = date ?? DateTime.now();
    final dateTime = DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
      hour,
      0,
    );
    return '${dateTime.toIso8601String()}Z';
  }

  /// Gets day suffix (st, nd, rd, th)
  static String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }
}