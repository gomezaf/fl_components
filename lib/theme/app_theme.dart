import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // color primario
    primaryColor: primary,
    // appBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
      // textButton Theme
    ),
    textButtonTheme: TextButtonThemeData(
        // ignore: deprecated_member_use
        style: TextButton.styleFrom(primary: Colors.indigo)),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // color primario
    primaryColor: primary,
    // appBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
