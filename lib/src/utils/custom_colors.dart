import 'package:flutter/material.dart';

class CustomColors {
  static final MaterialColor _mainColors = MaterialColor(
    0xFF1ABC9C,
    <int, Color>{
      50:  Color(0xFFdcf3ee),
      100: Color(0xFFaae2d4),
      200: Color(0xFF6fd0b8),
      300: Color(0xFF1abc9c),
      400: Color(0xFF00ad87),
      500: Color(0xFF009c74),
      600: Color(0xFF008f68),
      700: Color(0xFF007f58),
      800: Color(0xFF006f4b),
      900: Color(0xFF00522f),
    }
  );

  static MaterialColor primary = _mainColors;

  static Color main = _mainColors[300];

  static Color background = Color(0xFFECF0F1);

  static Color unselected = Color.fromRGBO(44, 62, 80, 0.80);
}