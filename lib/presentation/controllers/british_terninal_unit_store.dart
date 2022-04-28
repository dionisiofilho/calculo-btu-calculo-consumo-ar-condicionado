import 'package:calculo_ar_condicionado/presentation/enums/sun_expose_enum.dart';
import 'package:mobx/mobx.dart';

part 'british_terninal_unit_store.g.dart';

class BristishTerminalUnitStore = _BristishTerminalUnitStore
    with _$BristishTerminalUnitStore;

abstract class _BristishTerminalUnitStore with Store {
  @observable
  int? width;

  @observable
  int? height;

  @observable
  SunExpose? sunExposureLevel;

  @action
  void setWidth(int width) {
    this.width = width;
  }

  @action
  void setHeight(int height) {
    this.height = height;
  }

  @action
  setSunExposure(SunExpose sunExpose) {
    sunExposureLevel = sunExpose;
  }
}
