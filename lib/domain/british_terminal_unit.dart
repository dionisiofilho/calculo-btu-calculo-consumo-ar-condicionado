import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:calculo_ar_condicionado/presentation/enums/sun_expose_enum.dart';

class BritishTerminalUnit {
  double? width;
  double? length;
  int? amountPeoples;
  int? amountEquipment;
  SunExposure? sunExposureLevel;

  BritishTerminalUnit.init(this.width, this.length, this.amountPeoples,
      this.sunExposureLevel, this.amountEquipment);

  String? validate() {
    String? error;

    if (!isValidLength) {
      error = LocaleProvider.current.invalid_length;
    }

    if (!isValidWidth) {
      error = LocaleProvider.current.invalid_width;
    }

    if (sunExposureLevel == null) {
      error = LocaleProvider.current.invalid_sun_exposure;
    }
    return error;
  }

  bool get isValidWidth {
    return width != null && width! > 0;
  }

  bool get isValidLength {
    return length != null && length! > 0;
  }

  int get calculate {
    int paramExposure = 600;
    int btus = 0;
    if (sunExposureLevel != null) {
      switch (sunExposureLevel!) {
        case SunExposure.Absence:
        case SunExposure.Partially:
          paramExposure = 600;
          break;
        case SunExposure.Directly:
          paramExposure = 800;
          break;
      }
    }

    double? area = width! * length!;
    btus = (area.toInt() * paramExposure);

    if (amountPeoples != null && amountPeoples! > 1) {
      int valuePeoples = (amountPeoples! - 1) * paramExposure;
      btus = btus + valuePeoples;
    }

    int valueEquipments = (amountEquipment ?? 0) * paramExposure;
    btus = btus + valueEquipments;

    return btus;
  }
}
