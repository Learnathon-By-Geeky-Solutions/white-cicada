import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_palette.dart';

class AppTextThemes{
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.roboto(),
    headlineLarge: GoogleFonts.roboto(),
    headlineMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    bodyMedium: GoogleFonts.roboto(),
    bodySmall: GoogleFonts.roboto(),
  );
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: GoogleFonts.roboto(
          color: whiteColor
      )
  );
}