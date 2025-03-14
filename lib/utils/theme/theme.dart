import 'package:ecommerce_new_design/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce_new_design/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();//This is done to creating instance

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      titleTextStyle: TextStyle(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.deepPurple,
      accentColor: Colors.deepPurpleAccent,
    ),
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme:TElevatedButtonTheme.lightElevatedButtonTheme  
  );


  static ThemeData dartTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.deepPurple,
    brightness: Brightness.dark,
    useMaterial3: true,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme
  );
}
