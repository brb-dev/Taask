import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';
import 'base_styles.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.light: ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.white,
    primaryColor: AppColor.darkCyan50,
    primaryColorLight: AppColor.darkCyan30,
    canvasColor: AppColor.white,
    colorScheme: _colorScheme(),
    textTheme: _textTheme(),
    appBarTheme: _appBarTheme(),

    //button theme
    elevatedButtonTheme: _elevatedButtonTheme(),
    outlinedButtonTheme: _outlinedButtonTheme(),
  ),
  AppTheme.dark: ThemeData.light().copyWith(),
};

AppBarTheme _appBarTheme() {
  return AppBarTheme(
    color: AppColor.white,
    elevation: 4,
    titleTextStyle: _textTheme().titleMedium?.copyWith(
          color: AppColor.black,
        ),
    centerTitle: false,
    titleSpacing: 0,
    //backgroundColor: AppColor.white,
  );
}

ColorScheme _colorScheme() {
  return const ColorScheme.light().copyWith(
    surface: AppColor.white,
    secondary: AppColor.dusk50,
    inversePrimary: AppColor.grey,
  );
}

OutlinedButtonThemeData _outlinedButtonTheme() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: AppColor.white,
      side: BorderSide(color: AppColor.darkCyan50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: GoogleFonts.kantumruyPro(
        fontSize: 15,
        color: AppColor.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
      ),
      elevation: 0,
      minimumSize: const Size(120, 45),
    ),
  );
}

ElevatedButtonThemeData _elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.darkCyan50,
      foregroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: AppColor.darkCyan50,
          width: 2.0,
        ),
      ),
      textStyle: _textTheme().titleMedium,
      elevation: 4,
      disabledBackgroundColor: AppColor.black,
      disabledForegroundColor: AppColor.white,
    ),
  );
}

TextTheme _textTheme() {
  return ThemeData.light().textTheme.copyWith(
        headlineLarge: BaseStyles.headlineLarge,
        headlineMedium: BaseStyles.headlineMedium,
        headlineSmall: BaseStyles.headlineSmall,
        titleLarge: BaseStyles.titleLarge,
        titleMedium: BaseStyles.titleMedium,
        titleSmall: BaseStyles.titleSmall,
        bodyLarge: BaseStyles.bodyLarge,
        bodyMedium: BaseStyles.bodyMedium,
        bodySmall: BaseStyles.bodySmall,
        displayLarge: BaseStyles.displayLarge,
        displayMedium: BaseStyles.displayMedium,
        displaySmall: BaseStyles.displaySmall,
        labelLarge: BaseStyles.labelLarge,
        labelMedium: BaseStyles.labelMedium,
        labelSmall: BaseStyles.labelSmall,
      );
}
