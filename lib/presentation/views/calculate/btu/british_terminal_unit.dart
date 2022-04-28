import 'package:calculo_ar_condicionado/core/bases/BaseStateful.dart';
import 'package:calculo_ar_condicionado/core/extensions/string_extension.dart';
import 'package:calculo_ar_condicionado/core/styles_app.dart';
import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:calculo_ar_condicionado/presentation/controllers/british_terninal_unit_store.dart';
import 'package:calculo_ar_condicionado/presentation/enums/sun_expose_enum.dart';
import 'package:calculo_ar_condicionado/presentation/widgets/button_app.dart';
import 'package:calculo_ar_condicionado/presentation/widgets/center_horizontal.dart';
import 'package:calculo_ar_condicionado/presentation/widgets/container_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BritishTerminalUnit extends StatefulWidget {
  const BritishTerminalUnit({Key? key}) : super(key: key);

  @override
  _BritishTerminalUnitState createState() => _BritishTerminalUnitState();
}

class _BritishTerminalUnitState extends BaseStateful<BritishTerminalUnit> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final BristishTerminalUnitStore _bristishTerminalUnitStore =
      BristishTerminalUnitStore();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: StyleApp.paddingPage,
      child: Form(
          key: _formKey,
          child: Observer(builder: (_) =>
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CenterHorizontal(
                        child: Text(LocaleProvider.current.btu_calculate,
                            style: StyleApp.titleNormal)),
                    CenterHorizontal(
                        child: Text(LocaleProvider.current.british_thermal_unit,
                            style: StyleApp.subTitleSmall)),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: CenterHorizontal(
                          child: Text(LocaleProvider.current.ambient_footage,
                              style: StyleApp.titleSmall)),
                    ),
                    ContainerInput(
                      hint: LocaleProvider.current.width +
                          " (" +
                          LocaleProvider.current.meters +
                          ")",
                      input: TextFormField(
                        validator: (value) {
                          return value.validateEmpty();
                        },
                        onSaved: (value) => {
                          _bristishTerminalUnitStore.setWidth(int.parse(value!))
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        decoration: const InputDecoration(counterText: ""),
                      ),
                      paddingTop: 20.0,
                    ),
                    ContainerInput(
                      hint: LocaleProvider.current.length +
                          " (" +
                          LocaleProvider.current.meters +
                          ")",
                      input: TextFormField(
                        validator: (value) {
                          return value.validateEmpty();
                        },
                        onSaved: (value) => {
                          _bristishTerminalUnitStore.setHeight(int.parse(value!))
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        decoration: const InputDecoration(counterText: ""),
                      ),
                      paddingTop: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CenterHorizontal(
                          child: Text(LocaleProvider.current.sun_exposure_level,
                              style: StyleApp.titleSmall)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: radioExposureSunLevel(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CenterHorizontal(
                          child: Text(LocaleProvider.current.quantity_others,
                              style: StyleApp.titleSmall)),
                    ),
                    ButtonApp(
                        text: LocaleProvider.current.calculate, onPressed: null)
                  ],
                ),
              ),)),
    );
  }

  List<Widget> radioExposureSunLevel() {
    List<Widget> widgets = [];

    for (var sunExpose in SunExpose.values) {
      widgets.add(RadioListTile(
          value: sunExpose,
          groupValue: _bristishTerminalUnitStore.sunExposureLevel,
          title: Text(sunExpose.getDescription()),
          secondary: Icon(sunExpose.getIcon(), color: Colors.amber,),
          activeColor: Theme.of(context).primaryColorDark,
          onChanged: (val) {
            _bristishTerminalUnitStore.setSunExposure((val as SunExpose));
          }));
    }

    return widgets;
  }
}
