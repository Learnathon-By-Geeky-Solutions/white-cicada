import 'package:flutter/material.dart';
import '../theme_extensions/color_palette.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: AppColors.blackColor,
    filled: true,
    fillColor: AppColors.textFiledFillColor,
    labelStyle: const TextStyle(color: AppColors.blackColor),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.textFiledBorderColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.textFiledBorderColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.textFiledBorderColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.textFiledBorderColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: AppColors.whiteColor,
    labelStyle: const TextStyle(color: AppColors.whiteColor),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.whiteColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.whiteColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.whiteColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.whiteColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
