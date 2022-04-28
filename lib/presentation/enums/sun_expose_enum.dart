import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:flutter/material.dart';

enum SunExpose { Directly, Partially, Absence }

extension SunExposeExtension on SunExpose {
  String getDescription() {
    switch (this) {
      case SunExpose.Directly:
        return LocaleProvider.current.directly;

      case SunExpose.Absence:
        return LocaleProvider.current.absence_light;

      case SunExpose.Partially:
        return LocaleProvider.current.partially;
    }
  }

  IconData? getIcon() {
    switch (this) {
      case SunExpose.Directly:
        return const IconData(0xe800, fontFamily: "MyFlutterApp", fontPackage: null);

      case SunExpose.Absence:
        return const IconData(0xe801, fontFamily: "MyFlutterApp", fontPackage: null);

      case SunExpose.Partially:
        return const IconData(0xe802, fontFamily: "MyFlutterApp", fontPackage: null);
    }
  }
}
