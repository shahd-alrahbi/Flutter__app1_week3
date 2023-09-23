import 'package:flutter/material.dart';

class AppThemw {
  static ThemeData light = ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber)),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber,
          titleTextStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold)));

  static ThemeData dark = ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.deepPurpleAccent)),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          titleTextStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold)));
}
