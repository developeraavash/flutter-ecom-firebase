import 'package:ecommerce_new_design/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.dartTheme,
      theme: TAppTheme.lightTheme,
      home: Center(),
    );
  }
}
