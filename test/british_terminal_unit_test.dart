import 'package:calculo_ar_condicionado/domain/british_terminal_unit.dart';
import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:calculo_ar_condicionado/presentation/enums/sun_expose_enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  LocaleProvider? localeProvider;

  setUp(() {
    return LocaleProvider.load(const Locale("pt", "BR"))
        .then((lp) => {localeProvider = lp});
  });

  test('btu - width greater than zero', () {
    final BritishTerminalUnit britishTerminalUnit =
        BritishTerminalUnit.init(2, 0, 0, SunExposure.Partially, 0);
    expect(britishTerminalUnit.isValidWidth, true);
  });

  test('btu - width equal to zero', () {
    final BritishTerminalUnit britishTerminalUnit =
        BritishTerminalUnit.init(0, 0, 0, SunExposure.Partially, 0);
    expect(britishTerminalUnit.isValidWidth, false);
  });

  test('btu - length greater than zero', () {
    final BritishTerminalUnit britishTerminalUnit =
        BritishTerminalUnit.init(2, 2, 0, SunExposure.Partially, 0);
    expect(britishTerminalUnit.isValidWidth, true);
  });

  test('btu - length equal to zero', () {
    final BritishTerminalUnit britishTerminalUnit =
        BritishTerminalUnit.init(0, 0, 0, SunExposure.Partially, 0);
    expect(britishTerminalUnit.isValidLength, false);
  });

  test('btu - calculate', () {
    final BritishTerminalUnit britishTerminalUnit =
        BritishTerminalUnit.init(5, 5, 5, SunExposure.Partially, 5);
    expect(britishTerminalUnit.calculate, 16800);
  });
}
