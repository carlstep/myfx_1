import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Color(0xFFFAFDFA),
    primary: Color(0xFF006B5E),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF4A635E),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade800,
    primary: Colors.green.shade600,
    onPrimary: Colors.grey.shade700,
    secondary: Colors.green.shade900,
  ),
);
