import 'package:calculo_ar_condicionado/core/extensions/double_extension.dart';
import 'package:calculo_ar_condicionado/generated/l10n.dart';

class EnergyCalculate {

  int? hoursPerDay;
  int? daysPerMonth;
  double? devicePowerConsumption;
  double? energyValue;

  double calculate(){
    var hours = (daysPerMonth! * hoursPerDay!) / 30;
    var resultAsString =  ((hours * devicePowerConsumption!) * energyValue!).toStringAsFixed(2);
    return double.parse(resultAsString);
  }

  String valueFmt(){
    return calculate().toCurrency();
  }

  String? validate(){
    if (daysPerMonth != null) {
      if (daysPerMonth! < 1 || daysPerMonth! > 31) {
        return LocaleProvider.current.invalid_days_per_month;
      }
    }

    if (hoursPerDay != null) {
      if (hoursPerDay! < 1 || hoursPerDay! > 24) {
        return LocaleProvider.current.invalid_days_hours_per_day;
      }
    }

    if (energyValue != null) {
      if (energyValue == 0.0) {
        return LocaleProvider.current.invalid_energy_value;
      }
    }

    return null;
  }
}
