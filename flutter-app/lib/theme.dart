// lib/theme.dart — Jovio brand theme
import 'package:flutter/material.dart';

class JovioColors {
  static const bg       = Color(0xFF07070F);
  static const surface  = Color(0xFF0D0D1A);
  static const high     = Color(0xFF13132A);
  static const border   = Color(0xFF1E1E3A);
  static const orange   = Color(0xFFF97316);
  static const teal     = Color(0xFF10B981);
  static const purple   = Color(0xFF8B5CF6);
  static const gold     = Color(0xFFF59E0B);
  static const red      = Color(0xFFEF4444);
  static const text     = Color(0xFFF0F0FF);
  static const mid      = Color(0xFF9090B0);
  static const dim      = Color(0xFF44445A);
  static const gradient = LinearGradient(
    colors: [orange, teal],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class JovioTheme {
  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: JovioColors.bg,
    colorScheme: const ColorScheme.dark(
      primary: JovioColors.teal,
      secondary: JovioColors.orange,
      surface: JovioColors.surface,
      error: JovioColors.red,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: JovioColors.surface,
      foregroundColor: JovioColors.text,
      elevation: 0,
      titleTextStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: JovioColors.text),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: JovioColors.high,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: JovioColors.border)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: JovioColors.border)),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: JovioColors.teal, width: 1.5)),
      labelStyle: const TextStyle(color: JovioColors.mid),
      hintStyle: const TextStyle(color: JovioColors.dim),
    ),
    cardTheme: CardTheme(
      color: JovioColors.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: const BorderSide(color: JovioColors.border)),
      elevation: 0,
    ),
  );
}
