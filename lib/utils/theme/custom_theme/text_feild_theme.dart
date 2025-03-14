import 'package:flutter/material.dart';

class TTextFeildTheme {
  TTextFeildTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.grey),

    ),

    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide:const BorderSide(width: 1,color: Colors.grey)

    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide:const BorderSide(width: 1,color: Colors.black12)

    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide:const BorderSide(width: 1,color: Colors.red)

    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide:const BorderSide(width: 1,color: Colors.red)

    ),
     
  );

// Dark Theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),

    // Corrected floatingLabelStyle with opacity
    floatingLabelStyle: TextStyle().copyWith(
      color: Colors.white.withValues(alpha:  0.8), // Correct opacity application
    ),

    border: _borderStyle(color: Colors.white),
    enabledBorder: _borderStyle(color: Colors.white),
    focusedBorder: _borderStyle(color: Colors.blue),
    errorBorder: _borderStyle(color: Colors.red),
    focusedErrorBorder: _borderStyle(color: Colors.red),
  );

  // Private method to avoid redundancy in border styling
  static OutlineInputBorder _borderStyle({Color color = Colors.grey}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: color),
    );
  }
}
