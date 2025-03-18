import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // App Basic Colors
  static const Color primaryColor = Color(0xEE6366F1); // Rich indigo
  static const Color secondary = Color(0xFFF59E0B); // Warm amber
  static const Color accent = Color(0xFF60A5FA); // Soft sky blue

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF8B5CF6), // Deep purple
      Color(0xFF6366F1), // Indigo
      Color(0xFF60A5FA), // Sky blue
    ],
  );

  // Text colors
  static const Color textPrimary = Color(0xFF1F2937); // Soft black
  static const Color textSecondary = Color(0xFF6B7280); // Cool gray
  static const Color textWhite = Color(0xFFF9FAFB); // Off-white

  // Background Colors
  static const Color light = Color(0xFFF8FAFC); // Ice white
  static const Color dark = Color(0xFF111827); // Deep navy
  static const Color primaryBackground = Color(0xFFEFF6FF); // Pale indigo

  // Container Colors
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color darkContainer = Color(0xFF1F2937); // Charcoal

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4F46E5); // Deep indigo
  static const Color buttonSecondary = Color(0xFF374151); // Graphite
  static const Color buttonDisabled = Color(0xFF9CA3AF); // Silver

  // Border Colors
  static const Color borderPrimary = Color(0xFFE5E7EB); // Light gray
  static const Color borderSecondary = Color(0xFFF3F4F6); // Extra light gray

  // Status Colors
  static const Color error = Color(0xFFDC2626); // Crimson red
  static const Color success = Color(0xFF16A34A); // Forest green
  static const Color warning = Color(0xFFEA580C); // Vibrant orange
  static const Color info = Color(0xFF2563EB); // Sapphire blue

  // Neutral Shades
  static const Color black = Color(0xFF030712); // Soft black
  static const Color darkerGrey = Color(0xFF374151); // Graphite
  static const Color darkGrey = Color(0xFF6B7280); // Medium gray
  static const Color grey = Color(0xFFF3F4F6); // Light gray
}
