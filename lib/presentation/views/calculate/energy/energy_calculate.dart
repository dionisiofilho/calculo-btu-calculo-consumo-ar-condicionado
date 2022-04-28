import 'package:calculo_ar_condicionado/core/bases/BaseStateful.dart';
import 'package:calculo_ar_condicionado/core/colors_app.dart';
import 'package:calculo_ar_condicionado/core/extensions/string_extension.dart';
import 'package:calculo_ar_condicionado/core/formatter/money_formatter.dart';
import 'package:calculo_ar_condicionado/core/styles_app.dart';
import 'package:calculo_ar_condicionado/domain/energy_calculate.dart';
import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:calculo_ar_condicionado/presentation/controllers/energy_calculate_store.dart';
import 'package:calculo_ar_condicionado/presentation/widgets/button_app.dart';
import 'package:calculo_ar_condicionado/presentation/widgets/center_horizontal.dart';
import 'package:calculo_ar_condicionado/presentation/widgets/container_input.dart';
import 'package:calculo_ar_condicionado/resources/assets_app.dart';
import 'package:flutter/material.dart';

class EnergyCalculateView extends StatefulWidget {
  const EnergyCalculateView({Key? key}) : super(key: key);

  @override
  _EnergyCalculateViewState createState() => _EnergyCalculateViewState();
}

class _EnergyCalculateViewState extends BaseStateful<EnergyCalculateView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final EnergyCalculateStore _energyCalculateStore = EnergyCalculateStore();

  void _calculate() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      FocusScope.of(context).unfocus();
      _energyCalculateStore.calculate().then(
          (energyCalculate) =>
              {showViewBottomSheet(_showResult(energyCalculate))},
          onError: (error) => {showError(error)});
    }
  }

  void _showInforProcel() {
    showViewBottomSheet(_showInfoProcel());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: StyleApp.paddingPage,
      child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CenterHorizontal(
                    child: Text(LocaleProvider.current.consumption_calculation,
                        style: StyleApp.titleNormal)),
                ContainerInput(
                  hint: LocaleProvider.current.hours_per_day,
                  input: TextFormField(
                    validator: (value) {
                      return value.validateEmpty();
                    },
                    onSaved: _energyCalculateStore.setHoursPerDay,
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText:
                            LocaleProvider.current.example_hours_per_days),
                  ),
                  paddingTop: 20.0,
                ),
                ContainerInput(
                  hint: LocaleProvider.current.days_per_month,
                  input: TextFormField(
                    validator: (value) {
                      return value.validateEmpty();
                    },
                    onSaved: _energyCalculateStore.setDaysPerMonth,
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText:
                            LocaleProvider.current.example_days_per_month),
                  ),
                ),
                ContainerInput(
                  hint: LocaleProvider.current.device_power_consumption,
                  input: TextFormField(
                    validator: (value) {
                      return value.validateEmpty();
                    },
                    onSaved: _energyCalculateStore.setDevicePowerConsumption,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: LocaleProvider.current.example_device_value_consumption,
                      suffixIcon: IconButton(
                        onPressed: _showInforProcel,
                        color: ColorsApp.colorPrimary,
                        icon: const Icon(Icons.info_outline),
                      ),
                    ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                  ),
                ),
                ContainerInput(
                  hint: LocaleProvider.current.energy_price,
                  input: TextFormField(
                    validator: (value) {
                      return value.validateEmpty();
                    },
                    decoration: const InputDecoration(counterText: ""),
                    onSaved: _energyCalculateStore.setEnergyValue,
                    maxLength: 11,
                    textInputAction: TextInputAction.done,
                    inputFormatters: [MoneyFormatter()],
                    keyboardType: TextInputType.number,
                  ),
                ),
                ButtonApp(
                    text: LocaleProvider.current.calculate,
                    onPressed: _calculate)
              ],
            ),
          )),
    );
  }

  Widget _showInfoProcel() {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CenterHorizontal(
                  child: Text(
                LocaleProvider.current.procel_seal,
                style: StyleApp.titleSmall,
              )),
              Image.asset(AssetsApp.exampleProcel, width: 300, height: 400,)
            ],
          ),
        )
      ],
    );
  }

  Widget _showResult(EnergyCalculate energyCalculate) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            CenterHorizontal(
                child: Text(LocaleProvider.current.message_result_consumption,
                    style: StyleApp.titleSmall)),
            Center(
              child: Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    energyCalculate.valueFmt(),
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
                          text: LocaleProvider.current.hours + ": ",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: LocaleProvider.current.info_hours)
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
                          text: LocaleProvider.current.days_per_month + ": ",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: LocaleProvider.current.info_days)
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
                          text: LocaleProvider.current.info_energy_kwhm + ": ",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: LocaleProvider.current.info_consumption_device)
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
                          text: LocaleProvider.current.info_price_energy_kwhm +
                              ": ",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: LocaleProvider.current.info_energy_price)
                    ]),
              ),
            )
          ]),
        )
      ],
    );
  }
}
