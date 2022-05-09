import 'dart:ui';

import 'package:calculo_ar_condicionado/domain/energy_calculate.dart';
import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  LocaleProvider? localeProvider;

  setUp(() {
    return LocaleProvider.load(const Locale("pt", "BR"))
        .then((lp) => {localeProvider = lp});
  });

  test('energy calculate value', () {
    final energyCalculate = EnergyCalculate.init(8, 20, 22.8, 0.93);
    expect(energyCalculate.calculate(), 113.09);
  });

  test('energy calculate value formatted', () {
    final energyCalculate = EnergyCalculate.init(8, 20, 22.8, 0.63);
    expect(energyCalculate.valueFmt(), equals('R\$\u{00A0}76,61'));
  });

  test('validate', () {
    final energyCalculate = EnergyCalculate.init(8, 20, 22.8, 0.63);
    expect(energyCalculate.validate(), isNull);
  });
}
