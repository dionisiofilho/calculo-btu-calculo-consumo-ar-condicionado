import 'package:calculo_ar_condicionado/core/bases/BaseStateful.dart';
import 'package:calculo_ar_condicionado/resources/colors_app.dart';
import 'package:calculo_ar_condicionado/core/extensions/string_extension.dart';
import 'package:calculo_ar_condicionado/resources/styles_app.dart';
import 'package:calculo_ar_condicionado/domain/british_terminal_unit.dart';
import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:calculo_ar_condicionado/presentation/controllers/british_terninal_unit_store.dart';
import 'package:calculo_ar_condicionado/presentation/enums/sun_expose_enum.dart';
import 'package:calculo_ar_condicionado/presentation/widgets/button_app.dart';
import 'package:calculo_ar_condicionado/presentation/widgets/center_horizontal.dart';
import 'package:calculo_ar_condicionado/presentation/widgets/container_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BritishTerminalUnitCalculate extends StatefulWidget {
  const BritishTerminalUnitCalculate({Key? key}) : super(key: key);

  @override
  _BritishTerminalUnitCalculateState createState() =>
      _BritishTerminalUnitCalculateState();
}

class _BritishTerminalUnitCalculateState
    extends BaseStateful<BritishTerminalUnitCalculate> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final BristishTerminalUnitStore _bristishTerminalUnitStore =
      BristishTerminalUnitStore();

  void _calculate() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      FocusScope.of(context).unfocus();
      _bristishTerminalUnitStore.calculate().then(
          (btu) => {showViewBottomSheet(_showResult(btu))},
          onError: (error) => {showError(error)});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Observer(
          builder: (_) => SingleChildScrollView(
            padding: StyleApp.paddingPage,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
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
                      _bristishTerminalUnitStore.setWidth(double.parse(value))
                    },
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
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
                      _bristishTerminalUnitStore.setHeight(double.parse(value))
                    },
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
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
                ContainerInput(
                  hint: LocaleProvider.current.amount_of_people,
                  input: TextFormField(
                    validator: (value) {
                      return value.validateEmpty();
                    },
                    onSaved: (value) => {
                      _bristishTerminalUnitStore
                          .setAmountOfPeople(int.parse(value!))
                    },
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    maxLength: 4,
                    decoration: const InputDecoration(counterText: ""),
                  ),
                  paddingTop: 20.0,
                ),
                ContainerInput(
                  hint: LocaleProvider.current.amount_of_eletronic,
                  input: TextFormField(
                    validator: (value) {
                      return value.validateEmpty();
                    },
                    onSaved: (value) => {
                      _bristishTerminalUnitStore.setEquipment(int.parse(value!))
                    },
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.send,
                    onFieldSubmitted: (value){
                      _calculate();
                    },
                    maxLength: 5,
                    decoration: const InputDecoration(counterText: ""),
                  ),
                  paddingTop: 20.0,
                ),
                ButtonApp(
                    text: LocaleProvider.current.calculate,
                    onPressed: _calculate)
              ],
            ),
          ),
        ));
  }

  Widget _showResult(BritishTerminalUnit btu) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            CenterHorizontal(
                child: Text(LocaleProvider.current.message_result_device,
                    style: StyleApp.titleSmall)),
            Center(
              child: Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    btu.calculate.toString() + " BTUs",
                    style: StyleApp.result,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: ColorsApp.colorPrimary,
                    ),
                    children: [
                      TextSpan(
                          text: LocaleProvider.current.can_buy_lower_power,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: LocaleProvider
                            .current.can_buy_lower_power_description,
                      )
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: ColorsApp.colorPrimary,
                    ),
                    children: [
                      TextSpan(
                          text: LocaleProvider.current.can_buy_higher_power,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: LocaleProvider
                            .current.can_buy_higher_power_description,
                      )
                    ]),
              ),
            ),
          ]),
        )
      ],
    );
  }

  List<Widget> radioExposureSunLevel() {
    List<Widget> widgets = [];

    for (var sunExpose in SunExposure.values) {
      widgets.add(RadioListTile(
          value: sunExpose,
          groupValue: _bristishTerminalUnitStore.sunExposureLevel,
          title: Text(sunExpose.getDescription()),
          secondary: Icon(
            sunExpose.getIcon(),
            color: Colors.amber,
          ),
          activeColor: Theme.of(context).primaryColorDark,
          onChanged: (val) {
            _bristishTerminalUnitStore.setSunExposure((val as SunExposure));
          }));
    }
    return widgets;
  }
}
