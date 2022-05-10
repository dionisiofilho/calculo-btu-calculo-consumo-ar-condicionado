import 'package:calculo_ar_condicionado/resources/colors_app.dart';
import 'package:flutter/material.dart';

class StyleApp {
  StyleApp._();

  static EdgeInsets paddingPage = const EdgeInsets.all(16.0);
  static TextStyle titleNormal =
      const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  static TextStyle titleSmall =
      const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold);
  static TextStyle hintInput =
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  static TextStyle result =
  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  static TextStyle subTitleSmall =
  const TextStyle(fontSize: 14.0);

  static ButtonStyle buttonStyleAppPrimary = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(ColorsApp.colorPrimary),
      padding:
          MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15.0)),
      foregroundColor: MaterialStateProperty.all<Color>(ColorsApp.colorPrimary),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: ColorsApp.colorPrimary))));
}
