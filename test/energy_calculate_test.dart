import 'package:calculo_ar_condicionado/domain/energy_calculate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('energy calculate value', () {
    final energyCalculate = EnergyCalculate.init(8, 20, 22.8, 0.63);
    expect(energyCalculate.calculate(), 76.61);
  });

  test('energy calculate value formatted', () {
    final energyCalculate = EnergyCalculate.init(8, 20, 22.8, 0.63);
    expect(energyCalculate.valueFmt(), equals('R\$\u{00A0}76,61'));
  });
}
