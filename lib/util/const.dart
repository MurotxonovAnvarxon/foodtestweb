import 'package:flutter/material.dart';

class Constants {
  static String appName = "Foody Bite";

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Color(0xff5563ff);
  static Color darkAccent = Color(0xff5563ff);
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color? ratingBG = Colors.yellow[600];

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    hintColor: lightAccent,
    cardColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    // appBarTheme: AppBarTheme(
    //   iconTheme: IconThemeData(
    //     headline6: TextStyle(
    //       color: darkBG,
    //       fontSize: 18.0,
    //       fontWeight: FontWeight.w800,
    //     ),
    //   ),
    // ), colorScheme: ColorScheme(background: lightBG, brightness: ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    hintColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cardColor: darkAccent,
    // appBarTheme: AppBarTheme(
    //   textTheme: TextTheme(
    //     headline6: TextStyle(
    //       color: lightBG,
    //       fontSize: 18.0,
    //       fontWeight: FontWeight.w800,
    //     ),
    //   ),
    // ), colorScheme: ColorScheme(background: darkBG),
  );
}
