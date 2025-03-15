import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // App Basic Colors
  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // GradientColors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c4)],
  );

  // Text colors
  static const Color textPri = Color(0xFF333333);
  static const Color textSec = Color(0xFF6c757D);
  static const Color textWhite = Colors.white;

  // BackgroundColor
  static const light = Color(0xFFF6F6F6);
  static const dark = Color(0xFF6C757D);
  static const primaryBackground = Color(0xFFF3F5FF);

  // Background Containers Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = Colors.black45;

  // Buttons Colors

  static const Color buttonPri = Color(0xFF4b68ff);
  static const Color buttonSec = Color(0xFF6c757d);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  // Border Colors
  static const Color borderPri = Color(0xFFD9d9d9);
  static const Color borderSec = Color(0xFFE6E6E6);

  // Error and Validation Colors

  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFe0e0e0);
}
