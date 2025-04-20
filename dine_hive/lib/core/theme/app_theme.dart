import 'package:dine_hive/core/theme/src/part/button_theme_data.dart';
import 'package:dine_hive/core/theme/src/part/input_decoration_theme.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
      primaryColor:AppColors.primaryColor,
      brightness: Brightness.light,
      textTheme: AppTextTheme.lightTextTheme,
      scaffoldBackgroundColor: AppColors.bgColor,
      elevatedButtonTheme: AppEvaluatedButtonThemes.lightEvaluatedButtonTheme,
      inputDecorationTheme:AppInputDecorationTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppEvaluatedButtonThemes.darkEvaluatedButtonTheme,
      inputDecorationTheme:AppInputDecorationTheme.darkInputDecorationTheme
  );
}