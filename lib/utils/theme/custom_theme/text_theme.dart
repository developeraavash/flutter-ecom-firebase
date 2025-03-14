import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  // Helper function for creating TextStyle with default parameters
  static TextStyle _baseTextStyle({
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.normal,
    required Color color,
  }) {
    return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
  }

  // This replace TextStule().copyWith( other variables);

  //! Light text theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: _baseTextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: _baseTextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: _baseTextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleLarge: _baseTextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: _baseTextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: _baseTextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyLarge: _baseTextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyMedium: _baseTextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodySmall: _baseTextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelLarge: _baseTextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    labelMedium: _baseTextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black.withValues(alpha: 0.5),
    ),
  );

  //! Dark text theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: _baseTextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: _baseTextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineSmall: _baseTextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleLarge: _baseTextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: _baseTextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: _baseTextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyLarge: _baseTextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: _baseTextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: _baseTextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white.withValues(alpha: 0.5),
    ),
    labelLarge: _baseTextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    labelMedium: _baseTextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white.withValues(alpha: 0.5),
    ),
  );

  // Customizable Dark Text theme with dynamic parameters
  static TextTheme customDarkTextTheme({
    Color? headlineColor,
    Color? bodyColor,
    double? bodyFontSize,
    double? titleFontSize,
    Color? labelColor,
    FontWeight? titleFontWeight,
  }) {
    return TextTheme(
      headlineLarge: _baseTextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: headlineColor ?? Colors.white,
      ),
      headlineMedium: _baseTextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: headlineColor ?? Colors.white,
      ),
      headlineSmall: _baseTextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: headlineColor ?? Colors.white,
      ),
      titleLarge: _baseTextStyle(
        fontSize: titleFontSize ?? 16.0,
        fontWeight: titleFontWeight ?? FontWeight.w600,
        color: headlineColor ?? Colors.white,
      ),
      titleMedium: _baseTextStyle(
        fontSize: titleFontSize ?? 16.0,
        fontWeight: FontWeight.w500,
        color: headlineColor ?? Colors.white,
      ),
      titleSmall: _baseTextStyle(
        fontSize: titleFontSize ?? 16.0,
        fontWeight: FontWeight.w400,
        color: headlineColor ?? Colors.white,
      ),
      bodyLarge: _baseTextStyle(
        fontSize: bodyFontSize ?? 14.0,
        fontWeight: FontWeight.w500,
        color: bodyColor ?? Colors.white,
      ),
      bodyMedium: _baseTextStyle(
        fontSize: bodyFontSize ?? 14.0,
        fontWeight: FontWeight.normal,
        color: bodyColor ?? Colors.white,
      ),
      bodySmall: _baseTextStyle(
        fontSize: bodyFontSize ?? 14.0,
        fontWeight: FontWeight.w500,
        color:
            bodyColor?.withValues(alpha: 0.5) ??
            Colors.white.withValues(alpha: 0.5), // Here
      ),
      labelLarge: _baseTextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: labelColor ?? Colors.white,
      ),
      labelMedium: _baseTextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color:
            labelColor?.withValues(alpha: 0.5) ??
            Colors.white.withValues(alpha: 0.5),
      ),
    );
  }
}
