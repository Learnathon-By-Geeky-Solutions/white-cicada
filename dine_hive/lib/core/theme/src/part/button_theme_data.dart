import 'package:flutter/material.dart';

import '../theme_extensions/color_palette.dart';
class AppEvaluatedButtonThemes {
  AppEvaluatedButtonThemes._();

  //Light mode Evaluated Button Theme
  static final lightEvaluatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        foregroundColor: AppColors.blackColor,
        backgroundColor: AppColors.elevatedButtonColor,
        side: const BorderSide(color: AppColors.blackColor)),
  );

  //Dark mode Evaluated Button Theme
  static final darkEvaluatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        foregroundColor: AppColors.blackColor,
        backgroundColor: AppColors.elevatedButtonColor,
        side: const BorderSide(color: AppColors.whiteColor)),
  );
}