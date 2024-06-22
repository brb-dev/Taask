import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';
import 'font_manager.dart';

class BaseStyles {
  BaseStyles._();

  static TextStyle headlineLarge = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s48,
    fontWeight: FontWeightManager.bold,
    color: AppColor.black,
  );

  static TextStyle headlineMedium = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s32,
    fontWeight: FontWeightManager.bold,
    color: AppColor.black,
  );

  static TextStyle headlineSmall = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s24,
    fontWeight: FontWeightManager.bold,
    color: AppColor.black,
  );

  static TextStyle titleLarge = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s24,
    fontWeight: FontWeightManager.semiBold,
    color: AppColor.black,
  );

  static TextStyle titleMedium = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s20,
    fontWeight: FontWeightManager.semiBold,
    color: AppColor.black,
  );

  static TextStyle titleSmall = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.medium,
    color: AppColor.black,
  );

  static TextStyle bodyLarge = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.medium,
    color: AppColor.black,
  );

  static TextStyle bodyMedium = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.regular,
    color: AppColor.black,
  );

  static TextStyle bodySmall = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.regular,
    color: AppColor.black,
  );

  static TextStyle displayLarge = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s40,
    fontWeight: FontWeightManager.bold,
    color: AppColor.black,
  );

  static TextStyle displayMedium = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s20,
    fontWeight: FontWeightManager.bold,
    color: AppColor.black,
  );

  static TextStyle displaySmall = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.bold,
    color: AppColor.black,
  );

  static TextStyle labelLarge = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s20,
    fontWeight: FontWeightManager.medium,
    color: AppColor.black,
  );

  static TextStyle labelMedium = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.medium,
    color: AppColor.black,
  );

  static TextStyle labelSmall = GoogleFonts.kantumruyPro(
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.regular,
    color: AppColor.black,
  );
}
