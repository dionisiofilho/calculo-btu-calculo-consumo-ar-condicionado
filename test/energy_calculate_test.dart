import 'package:calculo_ar_condicionado/domain/energy_calculate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('energy calculate value', () {
    final energyCalculate = EnergyCalculate();
    energyCalculate.energyValue = 0.63;
    energyCalculate.daysPerMonth = 20;
    energyCalculate.devicePowerConsumption = 22.8;
    energyCalculate.hoursPerDay = 8;
    expect(energyCalculate.calculate(), 76.61);
  });

  test('energy calculate value formatted', () {
    final energyCalculate = EnergyCalculate();
    energyCalculate.energyValue = 0.63;
    energyCalculate.daysPerMonth = 20;
    energyCalculate.devicePowerConsumption = 22.8;
    energyCalculate.hoursPerDay = 8;
    expect(energyCalculate.valueFmt(), equals('R\$\u{00A0}76,61'));
  });
}
