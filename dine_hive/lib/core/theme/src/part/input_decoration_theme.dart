import 'package:flutter/material.dart';
import '../theme_extensions/color_palette.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: blackColor,
    filled: true,
    fillColor: textFiledFillColor,
    labelStyle: const TextStyle(color: blackColor),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: textFiledBorderColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: textFiledBorderColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: textFiledBorderColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: textFiledBorderColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: whiteColor,
    labelStyle: const TextStyle(color: whiteColor),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: whiteColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: whiteColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: whiteColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: whiteColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
