import 'package:ecommerce_new_design/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.dartTheme,
      theme: TAppTheme.lightTheme,
      home: Center(),
    );
  }
}
