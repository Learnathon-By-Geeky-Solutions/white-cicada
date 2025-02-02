import 'package:flutter/material.dart';

import '../theme_extensions/color_palette.dart';
class AppEvaluatedButtonThemes {
  AppEvaluatedButtonThemes._();

  //Light mode Evaluated Button Theme
  static final lightEvaluatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        foregroundColor: blackColor,
        backgroundColor: welcomePageButtonColor,
        side: const BorderSide(color: blackColor)),
  );

  //Dark mode Evaluated Button Theme
  static final darkEvaluatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        foregroundColor: blackColor,
        backgroundColor: welcomePageButtonColorDarkMode,
        side: const BorderSide(color: whiteColor)),
  );
}