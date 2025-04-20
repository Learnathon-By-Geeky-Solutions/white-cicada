import 'package:intl/intl.dart';

class Utils{
  ///  get average rating
  static double calculateAverageRating(List<double> ratings) {
    if (ratings.isEmpty) return 0.0;
    double total = ratings.reduce((a, b) => a + b);
    return total / ratings.length;
  }

  static String formatDate(
      DateTime dateTime, {
        String formatType = 'yyyy-MM-dd',
      }) {
    switch (formatType) {
      case 'yyyy-MM-dd':
      // Format: 2025-04-10
        return DateFormat('yyyy-MM-dd').format(dateTime);

      case 'dd-MM-yyyy':
      // Format: 10-04-2025
        return DateFormat('dd-MM-yyyy').format(dateTime);

      case 'MMM dd, yyyy':
      // Format: Apr 10, 2025
        return DateFormat('MMM dd, yyyy').format(dateTime);

      case 'EEEE, MMM d':
      // Format: Thursday, Apr 10
        return DateFormat('EEEE, MMM d').format(dateTime);

      case 'h:mm a':
      // Format: 5:30 PM (12-hour clock with AM/PM)
        return DateFormat('h:mm a').format(dateTime);

      default:
      // Fallback: default to ISO format
        return DateFormat('yyyy-MM-dd').format(dateTime);
    }
  }
}