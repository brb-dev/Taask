import 'package:flutter/material.dart';

abstract class AppColor {
  static Color darkCyan10 = HexColor.fromHex('#CCE8E8');
  static Color darkCyan30 = HexColor.fromHex('#66BABA');
  static Color darkCyan50 = HexColor.fromHex('#008C8C');
  static Color darkCyan70 = HexColor.fromHex('#007070');
  static Color darkCyan90 = HexColor.fromHex('#004646');
  static Color dusk10 = HexColor.fromHex('#DBDCE2');
  static Color dusk30 = HexColor.fromHex('#9297A9');
  static Color dusk50 = HexColor.fromHex('#49516F');
  static Color dusk70 = HexColor.fromHex('#3A4159');
  static Color dusk90 = HexColor.fromHex('#252938');
  static Color orangeSalmon10 = HexColor.fromHex('#F3E5DD');
  static Color orangeSalmon30 = HexColor.fromHex('#D6A389');
  static Color orangeSalmon50 = HexColor.fromHex('#C57B57');
  static Color orangeSalmon70 = HexColor.fromHex('#8A563D');
  static Color orangeSalmon90 = HexColor.fromHex('#633E2C');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color black = HexColor.fromHex('#000000');
  static Color grey = HexColor.fromHex('#B3B3B3');
  static Color lightGrey = HexColor.fromHex('#F3F1F1');
  static Color lighterGrey = HexColor.fromHex('#6F6F6F');
  static Color red = HexColor.fromHex('#C34D33');
  static Color green = HexColor.fromHex('#33FF58');
  static Color pink = HexColor.fromHex('#FF33FF');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString'; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
