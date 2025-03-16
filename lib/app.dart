import 'package:ecommerce_new_design/features/authentication/screens/on_boarding.dart';
import 'package:ecommerce_new_design/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.dartTheme,
      theme: TAppTheme.lightTheme,
      home: Onboarding(),
    );
  }
}
