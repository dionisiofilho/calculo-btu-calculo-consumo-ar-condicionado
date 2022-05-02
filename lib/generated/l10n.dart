// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class LocaleProvider {
  LocaleProvider();

  static LocaleProvider? _current;

  static LocaleProvider get current {
    assert(_current != null,
        'No instance of LocaleProvider was loaded. Try to initialize the LocaleProvider delegate before accessing LocaleProvider.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<LocaleProvider> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = LocaleProvider();
      LocaleProvider._current = instance;

      return instance;
    });
  }

  static LocaleProvider of(BuildContext context) {
    final instance = LocaleProvider.maybeOf(context);
    assert(instance != null,
        'No instance of LocaleProvider present in the widget tree. Did you add LocaleProvider.delegate in localizationsDelegates?');
    return instance!;
  }

  static LocaleProvider? maybeOf(BuildContext context) {
    return Localizations.of<LocaleProvider>(context, LocaleProvider);
  }

  /// `Calcular consumo`
  String get consumption_calculation {
    return Intl.message(
      'Calcular consumo',
      name: 'consumption_calculation',
      desc: '',
      args: [],
    );
  }

  /// `Horas por dia`
  String get hours_per_day {
    return Intl.message(
      'Horas por dia',
      name: 'hours_per_day',
      desc: '',
      args: [],
    );
  }

  /// `Dias por mês`
  String get days_per_month {
    return Intl.message(
      'Dias por mês',
      name: 'days_per_month',
      desc: '',
      args: [],
    );
  }

  /// `Consumo de energia do aparelho (kW/h por mês)`
  String get device_power_consumption {
    return Intl.message(
      'Consumo de energia do aparelho (kW/h por mês)',
      name: 'device_power_consumption',
      desc: '',
      args: [],
    );
  }

  /// `Preço da energia por kW/h`
  String get energy_price {
    return Intl.message(
      'Preço da energia por kW/h',
      name: 'energy_price',
      desc: '',
      args: [],
    );
  }

  /// `Calcular`
  String get calculate {
    return Intl.message(
      'Calcular',
      name: 'calculate',
      desc: '',
      args: [],
    );
  }

  /// `Calcular BTU`
  String get btu_calculate {
    return Intl.message(
      'Calcular BTU',
      name: 'btu_calculate',
      desc: '',
      args: [],
    );
  }

  /// `Calcular consumo`
  String get energy_calculate {
    return Intl.message(
      'Calcular consumo',
      name: 'energy_calculate',
      desc: '',
      args: [],
    );
  }

  /// `Campo obrigatório`
  String get input_required {
    return Intl.message(
      'Campo obrigatório',
      name: 'input_required',
      desc: '',
      args: [],
    );
  }

  /// `Dias por mês inválido`
  String get invalid_days_per_month {
    return Intl.message(
      'Dias por mês inválido',
      name: 'invalid_days_per_month',
      desc: '',
      args: [],
    );
  }

  /// `Horas por dia inválido`
  String get invalid_days_hours_per_day {
    return Intl.message(
      'Horas por dia inválido',
      name: 'invalid_days_hours_per_day',
      desc: '',
      args: [],
    );
  }

  /// `O preço da energia não pode ser R$ 0,00`
  String get invalid_energy_value {
    return Intl.message(
      'O preço da energia não pode ser R\$ 0,00',
      name: 'invalid_energy_value',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Erro`
  String get error {
    return Intl.message(
      'Erro',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `A média de consumo do seu aparelho é de:`
  String get message_result_consumption {
    return Intl.message(
      'A média de consumo do seu aparelho é de:',
      name: 'message_result_consumption',
      desc: '',
      args: [],
    );
  }

  /// `É o tempo por dia em que o aparelho ficará ligado, funcionando. No exemplo a seguir usaremos uma média de 8 horas diárias.`
  String get info_hours {
    return Intl.message(
      'É o tempo por dia em que o aparelho ficará ligado, funcionando. No exemplo a seguir usaremos uma média de 8 horas diárias.',
      name: 'info_hours',
      desc: '',
      args: [],
    );
  }

  /// `Faça um levantamento do total de dias no mês em que o aparelho de ar condicionado será utilizado. Exemplo: 18 dias ao mês.`
  String get info_days {
    return Intl.message(
      'Faça um levantamento do total de dias no mês em que o aparelho de ar condicionado será utilizado. Exemplo: 18 dias ao mês.',
      name: 'info_days',
      desc: '',
      args: [],
    );
  }

  /// `Para conseguir essa informação, verifique a indicação no manual do produto ou na etiqueta do selo PROCEL de eficiência energética que o acompanha. Exemplo: 22.8 kWh/ mês.`
  String get info_consumption_device {
    return Intl.message(
      'Para conseguir essa informação, verifique a indicação no manual do produto ou na etiqueta do selo PROCEL de eficiência energética que o acompanha. Exemplo: 22.8 kWh/ mês.',
      name: 'info_consumption_device',
      desc: '',
      args: [],
    );
  }

  /// `Lembre-se que existe uma variação desse valor de acordo com cada região do país. Uma maneira simples de encontrar o valor é verificando na conta de luz mensal.`
  String get info_energy_price {
    return Intl.message(
      'Lembre-se que existe uma variação desse valor de acordo com cada região do país. Uma maneira simples de encontrar o valor é verificando na conta de luz mensal.',
      name: 'info_energy_price',
      desc: '',
      args: [],
    );
  }

  /// `Horas`
  String get hours {
    return Intl.message(
      'Horas',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Preço da energia de kW/h em sua região`
  String get info_price_energy_kwhm {
    return Intl.message(
      'Preço da energia de kW/h em sua região',
      name: 'info_price_energy_kwhm',
      desc: '',
      args: [],
    );
  }

  /// `Consumo energético em kWh/mês`
  String get info_energy_kwhm {
    return Intl.message(
      'Consumo energético em kWh/mês',
      name: 'info_energy_kwhm',
      desc: '',
      args: [],
    );
  }

  /// `British Thermal Unit`
  String get british_thermal_unit {
    return Intl.message(
      'British Thermal Unit',
      name: 'british_thermal_unit',
      desc: '',
      args: [],
    );
  }

  /// `Metragem do ambiente`
  String get ambient_footage {
    return Intl.message(
      'Metragem do ambiente',
      name: 'ambient_footage',
      desc: '',
      args: [],
    );
  }

  /// `Largura`
  String get width {
    return Intl.message(
      'Largura',
      name: 'width',
      desc: '',
      args: [],
    );
  }

  /// `Metros`
  String get meters {
    return Intl.message(
      'Metros',
      name: 'meters',
      desc: '',
      args: [],
    );
  }

  /// `Comprimento`
  String get length {
    return Intl.message(
      'Comprimento',
      name: 'length',
      desc: '',
      args: [],
    );
  }

  /// `Qual o nível de exposição solar do ambiente`
  String get sun_exposure_level {
    return Intl.message(
      'Qual o nível de exposição solar do ambiente',
      name: 'sun_exposure_level',
      desc: '',
      args: [],
    );
  }

  /// `Diretamente`
  String get directly {
    return Intl.message(
      'Diretamente',
      name: 'directly',
      desc: '',
      args: [],
    );
  }

  /// `Parcialmente`
  String get partially {
    return Intl.message(
      'Parcialmente',
      name: 'partially',
      desc: '',
      args: [],
    );
  }

  /// `Ausência de luz`
  String get absence_light {
    return Intl.message(
      'Ausência de luz',
      name: 'absence_light',
      desc: '',
      args: [],
    );
  }

  /// `Defina a quantidade de pessoas, janelas e equipamentos eletrônicos`
  String get quantity_others {
    return Intl.message(
      'Defina a quantidade de pessoas, janelas e equipamentos eletrônicos',
      name: 'quantity_others',
      desc: '',
      args: [],
    );
  }

  /// `Ex. 8`
  String get example_hours_per_days {
    return Intl.message(
      'Ex. 8',
      name: 'example_hours_per_days',
      desc: '',
      args: [],
    );
  }

  /// `Ex. 20`
  String get example_days_per_month {
    return Intl.message(
      'Ex. 20',
      name: 'example_days_per_month',
      desc: '',
      args: [],
    );
  }

  /// `Ex. 22.8`
  String get example_device_value_consumption {
    return Intl.message(
      'Ex. 22.8',
      name: 'example_device_value_consumption',
      desc: '',
      args: [],
    );
  }

  /// `Ex. R$ 0,93`
  String get example_energy_value {
    return Intl.message(
      'Ex. R\$ 0,93',
      name: 'example_energy_value',
      desc: '',
      args: [],
    );
  }

  /// `Selo Procel`
  String get procel_seal {
    return Intl.message(
      'Selo Procel',
      name: 'procel_seal',
      desc: '',
      args: [],
    );
  }

  /// `Quantidade de pessoas`
  String get amount_of_people {
    return Intl.message(
      'Quantidade de pessoas',
      name: 'amount_of_people',
      desc: '',
      args: [],
    );
  }

  /// `Quantidade de equipamentos eletrônico`
  String get amount_of_eletronic {
    return Intl.message(
      'Quantidade de equipamentos eletrônico',
      name: 'amount_of_eletronic',
      desc: '',
      args: [],
    );
  }

  /// `Largura inválida`
  String get invalid_width {
    return Intl.message(
      'Largura inválida',
      name: 'invalid_width',
      desc: '',
      args: [],
    );
  }

  /// `A largura tem que ser maior que 0 (Zero).`
  String get invalid_width_greater_zero {
    return Intl.message(
      'A largura tem que ser maior que 0 (Zero).',
      name: 'invalid_width_greater_zero',
      desc: '',
      args: [],
    );
  }

  /// `Comprimento inválido`
  String get invalid_length {
    return Intl.message(
      'Comprimento inválido',
      name: 'invalid_length',
      desc: '',
      args: [],
    );
  }

  /// `O comprimento tem que ser maior que 0 (Zero).`
  String get invalid_length_greater_zero {
    return Intl.message(
      'O comprimento tem que ser maior que 0 (Zero).',
      name: 'invalid_length_greater_zero',
      desc: '',
      args: [],
    );
  }

  /// `Informe a exposição solar do ambiente`
  String get invalid_sun_exposure {
    return Intl.message(
      'Informe a exposição solar do ambiente',
      name: 'invalid_sun_exposure',
      desc: '',
      args: [],
    );
  }

  /// `A potência aproximada para você é:`
  String get message_result_device {
    return Intl.message(
      'A potência aproximada para você é:',
      name: 'message_result_device',
      desc: '',
      args: [],
    );
  }

  /// `Posso comprar um de potência menor?\n`
  String get can_buy_lower_power {
    return Intl.message(
      'Posso comprar um de potência menor?\n',
      name: 'can_buy_lower_power',
      desc: '',
      args: [],
    );
  }

  /// `A utilização de um aparelho de Ar condicionado de potência menor que o recomendado para o ambiente de instalação resultará em pouca eficiência de climatização, diminuição da vida útil e uma maior conta de luz.`
  String get can_buy_lower_power_description {
    return Intl.message(
      'A utilização de um aparelho de Ar condicionado de potência menor que o recomendado para o ambiente de instalação resultará em pouca eficiência de climatização, diminuição da vida útil e uma maior conta de luz.',
      name: 'can_buy_lower_power_description',
      desc: '',
      args: [],
    );
  }

  /// `Posso comprar um de potência maior?\n`
  String get can_buy_higher_power {
    return Intl.message(
      'Posso comprar um de potência maior?\n',
      name: 'can_buy_higher_power',
      desc: '',
      args: [],
    );
  }

  /// `A utilização de um aparelho de Ar Condicionado de potência maior que o recomendado para o ambiente de instalação pode não ser prejudicial. Por exemplo: Se você adquirir um aparelho com capacidade maior porém com tecnologia INVERTER, estará adquirindo um produto com uma tecnologia capaz de interpretar e operar eletronicamente com a potência necessária para o ambiente.`
  String get can_buy_higher_power_description {
    return Intl.message(
      'A utilização de um aparelho de Ar Condicionado de potência maior que o recomendado para o ambiente de instalação pode não ser prejudicial. Por exemplo: Se você adquirir um aparelho com capacidade maior porém com tecnologia INVERTER, estará adquirindo um produto com uma tecnologia capaz de interpretar e operar eletronicamente com a potência necessária para o ambiente.',
      name: 'can_buy_higher_power_description',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<LocaleProvider> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LocaleProvider> load(Locale locale) => LocaleProvider.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
