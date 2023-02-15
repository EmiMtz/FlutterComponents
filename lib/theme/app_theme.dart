
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: primary,

    //Appbar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 10
    ),

    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),
  );

  static final ThemeData darkTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: primary,

    //Appbar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 10
    ),

    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),
    scaffoldBackgroundColor: Colors.white
  );
}