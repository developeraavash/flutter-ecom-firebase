import 'package:ecommerce_new_design/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerce_new_design/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce_new_design/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerce_new_design/utils/theme/custom_theme/clip_theme.dart';
import 'package:ecommerce_new_design/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce_new_design/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:ecommerce_new_design/utils/theme/custom_theme/text_feild_theme.dart';
import 'package:ecommerce_new_design/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TClipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: TAppbarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFeildTheme.lightInputDecorationTheme,
  );
  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,

    appBarTheme: TAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: TClipTheme.darkChipTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: TTextFeildTheme.darkInputDecorationTheme,
  );

}
