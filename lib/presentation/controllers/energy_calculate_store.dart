import 'package:calculo_ar_condicionado/core/extensions/string_extension.dart';
import 'package:calculo_ar_condicionado/domain/energy_calculate.dart';
import 'package:mobx/mobx.dart';

part 'energy_calculate_store.g.dart';

class EnergyCalculateStore = _EnergyCalculateStore with _$EnergyCalculateStore;

abstract class _EnergyCalculateStore with Store {
  int? hoursPerDay;
  int? daysPerMonth;
  double? devicePowerConsumption;
  double? energyValue;

  void setHoursPerDay(String? value) {
    if (!value.isNullOrEmpty()) {
      hoursPerDay = int.parse(value!);
    }
  }

  void setDaysPerMonth(String? value) {
    if (!value.isNullOrEmpty()) {
      daysPerMonth = int.parse(value!);
    }
  }

  void setDevicePowerConsumption(String? value) {
    if (!value.isNullOrEmpty()) {
      devicePowerConsumption = double.parse(value!.changeCommaToDot()!);
    }
  }

  void setEnergyValue(String? value) {
    if (!value.isNullOrEmpty()) {
      energyValue = value.moneyToDouble();
    }
  }

  Future<EnergyCalculate> calculate() async {
    var energyCalculate = EnergyCalculate.init(
        hoursPerDay, daysPerMonth, devicePowerConsumption, energyValue);

    String? error = energyCalculate.validate();

    if (error.isNullOrEmpty()) {
      return Future.value(energyCalculate);
    }

    return Future.error(error ?? "");
  }
}
