import 'package:flutter/material.dart';

class TextThemes {
  TextThemes._();

  static TextTheme light = const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 22.0,
      color: Colors.black87,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 20.0,
      color: Colors.black87,
    ),
  );

  static TextTheme dark = const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.white,
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 12.0,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 20.0,
      color: Colors.white,
    ),
  );
}
