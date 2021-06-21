import 'package:calulator_app/calculator_screen.dart';
import 'package:calulator_app/controller/cal_provider.dart';
import 'package:calulator_app/controller/theme_provider.dart';
import 'package:calulator_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ChangeNotifierProvider(create: (_) => CalculatorProvider())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: "Calcualator",
      debugShowCheckedModeBanner: false,
      theme: theme.isDark ? darkTheme : lightTheme,
      home: CalculatorScreen(),
    );
  }
}
