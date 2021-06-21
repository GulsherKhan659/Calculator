import 'package:flutter/material.dart';

final lightTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.black,
  accentColor: Colors.white,
  shadowColor: Colors.grey,
);

final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.white,
    accentColor: Colors.black,
    shadowColor: Colors.grey.shade800);
