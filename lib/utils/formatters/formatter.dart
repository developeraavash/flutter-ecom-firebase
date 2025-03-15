import 'package:intl/intl.dart';

class TFormatter {
  // Format date in the Nepali (Gregorian) style
  static String formatDate(DateTime? date) {
    date ?? DateTime.now();
    return DateFormat(
      'dd-MM-yyyy',
    ).format(date!); // Standard dd-MM-yyyy format for Nepal
  }

  // Format currency in NPR (Nepalese Rupee)
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_IN', symbol: 'NPR ').format(
      amount,
    ); // Using 'en_IN' locale as it's the closest to Nepali format
  }

  // Format phone number (assuming 10 digits for Nepal)
  static String formatPhoneNumber(String phoneNumber) {
    // Assuming phone number format in Nepal is 9xx-xxxxxxx
    if (phoneNumber.length == 10) {
      return '${phoneNumber.substring(0, 3)}-${phoneNumber.substring(3)}';
    }
    return phoneNumber;
  }
}
