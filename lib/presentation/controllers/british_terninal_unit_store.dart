import 'package:calculo_ar_condicionado/core/extensions/string_extension.dart';
import 'package:calculo_ar_condicionado/domain/british_terminal_unit.dart';
import 'package:calculo_ar_condicionado/presentation/enums/sun_expose_enum.dart';
import 'package:mobx/mobx.dart';

part 'british_terninal_unit_store.g.dart';

class BristishTerminalUnitStore = _BristishTerminalUnitStore
    with _$BristishTerminalUnitStore;

abstract class _BristishTerminalUnitStore with Store {
  int? width;
  int? length;
  int? amountPeople;
  int? amountEquipment;
  SunExposure? sunExposureLevel;

  void setWidth(int width) {
    this.width = width;
  }

  void setHeight(int length) {
    this.length = length;
  }

  setSunExposure(SunExposure exposure) {
    sunExposureLevel = exposure;
  }

  setAmountOfPeople(int? amountPeople) {
    this.amountPeople = amountPeople;
  }

  setEquipment(int? amountEquipment) {
    this.amountEquipment = amountEquipment;
  }

  Future<BritishTerminalUnit> calculate() async {
    BritishTerminalUnit britishTerminalUnit = BritishTerminalUnit.init(
        width, length, amountPeople, sunExposureLevel, amountEquipment);
    String? error = britishTerminalUnit.validate();

    if (error.isNullOrEmpty()) {
      return Future.value(britishTerminalUnit);
    }

    return Future.error(error ?? "");
  }
}
