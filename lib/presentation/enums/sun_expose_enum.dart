import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:flutter/material.dart';

enum SunExposure { Directly, Partially, Absence }

extension SunExposureExtension on SunExposure {
  String getDescription() {
    switch (this) {
      case SunExposure.Directly:
        return LocaleProvider.current.directly;

      case SunExposure.Absence:
        return LocaleProvider.current.absence_light;

      case SunExposure.Partially:
        return LocaleProvider.current.partially;
    }
  }

  IconData? getIcon() {
    switch (this) {
      case SunExposure.Directly:
        return const IconData(0xe800, fontFamily: "MyFlutterApp", fontPackage: null);

      case SunExposure.Absence:
        return const IconData(0xe801, fontFamily: "MyFlutterApp", fontPackage: null);

      case SunExposure.Partially:
        return const IconData(0xe802, fontFamily: "MyFlutterApp", fontPackage: null);
    }
  }
}
