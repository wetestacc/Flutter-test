import 'package:flutter/material.dart';

final kLightThemeData = ThemeData(
  primarySwatch: Colors.pink,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
  ),
);

final kDarkThemeData = ThemeData(
  primarySwatch: Colors.amber,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
  ),
);

const kInitialLocale = Locale('en', 'US');
