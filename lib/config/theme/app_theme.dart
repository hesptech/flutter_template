import 'package:flutter/material.dart';

final Map<String,Color> colorName = <String, Color>{
  'primary': Colors.blue,
  'secondary': Colors.green,
  'error': Colors.red,
  'white': Colors.white,
  'black': Colors.black,
};

class AppTheme {

  AppTheme();

  // Theme.of(context).colorScheme.primary

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.black,
      onPrimary: Colors.white,
      secondary: Colors.white,
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: false
    ),
  );
}