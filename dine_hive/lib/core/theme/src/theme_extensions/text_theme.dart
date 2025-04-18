import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.roboto(
      fontSize: 28,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 26,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.roboto(
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w400),
    labelLarge: GoogleFonts.roboto(
      fontSize: 14,
      color: const Color(0xff4A4C56),
      fontWeight: FontWeight.w500,
    ),
    labelMedium: GoogleFonts.roboto(
      fontSize: 12,
      color: const Color(0xff4A4C56),
      fontWeight: FontWeight.w500,
    ),
    labelSmall: GoogleFonts.roboto(
      fontSize: 11,
      color: const Color(0xff4A4C56),
      fontWeight: FontWeight.w400,
    ),
  );
  static TextTheme darkTextTheme = TextTheme();
}