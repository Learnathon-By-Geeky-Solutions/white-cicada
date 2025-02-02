import 'package:flutter/material.dart';

import '../theme_extensions/color_palette.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
    prefixIconColor: blackColor,
    labelStyle: const TextStyle(color: blackColor),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: blackColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: blackColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: blackColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: blackColor,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
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
