import 'package:calculo_ar_condicionado/core/extensions/double_extension.dart';
import 'package:calculo_ar_condicionado/generated/l10n.dart';

class EnergyCalculate {
  int? hoursPerDay;
  int? daysPerMonth;
  double? devicePowerConsumption;
  double? energyValue;

  EnergyCalculate.init(this.hoursPerDay, this.daysPerMonth,
      this.devicePowerConsumption, this.energyValue);

  double calculate() {
    var hours = (daysPerMonth! * hoursPerDay!) / 30;
    var resultAsString =
        ((hours * devicePowerConsumption!) * energyValue!).toStringAsFixed(2);
    return double.parse(resultAsString);
  }

  String valueFmt() {
    return calculate().toCurrency();
  }

  String? validate() {
    if (!isValidDaysPerMonth) {
      return LocaleProvider.current.invalid_days_per_month;
    }

    if (!isValidHoursPerDay) {
      return LocaleProvider.current.invalid_days_hours_per_day;
    }

    if (!isValidEnergyValue) {
      return LocaleProvider.current.invalid_energy_value;
    }
    return null;
  }

  bool get isValidDaysPerMonth {
    return daysPerMonth != null && (daysPerMonth! > 0 && daysPerMonth! <= 31);
  }

  bool get isValidHoursPerDay {
    return hoursPerDay != null && (hoursPerDay! > 0 && hoursPerDay! < 24);
  }

  bool get isValidEnergyValue {
    return energyValue != null && (energyValue! > 0.0);
  }
}
