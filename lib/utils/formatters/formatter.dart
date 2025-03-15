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

  // Format phone number to international format
  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(
      RegExp(r'\D'),
      '',
    ); // Remove all non-digit characters

    // Check if it's Nepal's phone number (country code +977)
    if (digitsOnly.length == 10) {
      digitsOnly =
          '977$digitsOnly'; // Add Nepal country code to the phone number
    }

    String countryCode = '+977'; // Nepal country code
    String localNumber = digitsOnly.substring(
      3,
    ); // Remove the country code part (first 3 digits of '977')

    // Now format the phone number into an international style like +977 984-XXXXXXX
    final formattedNumber = StringBuffer();
    formattedNumber.write('$countryCode ');

    int i = 0;
    while (i < localNumber.length) {
      int groupLength =
          4; // After the country code, format as 4 digits (e.g., 984-XXXXXXX)
      if (i == 0) {
        formattedNumber.write(
          localNumber.substring(i, i + 3),
        ); // Add the first 3 digits
        formattedNumber.write('-'); // Add the dash
        i += 3;
      }
      formattedNumber.write(
        localNumber.substring(i, i + groupLength),
      ); // Add the next 4 digits
      i += groupLength;
    }

    return formattedNumber.toString();
  }
}
