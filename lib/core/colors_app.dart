import 'package:flutter/material.dart';

class ColorsApp {
  ColorsApp._();

  static Color get colorPrimary => Colors.teal;

  static Color get colorPrimaryDark => Colors.teal.shade900;

  static Color get colorAccent => colorFromHex("#00AE9D");

  static Color get colorBackground => Colors.white;

  static Color colorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
