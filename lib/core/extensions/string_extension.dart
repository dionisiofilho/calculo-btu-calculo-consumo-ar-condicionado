import 'package:calculo_ar_condicionado/generated/l10n.dart';

extension StringExtension on String? {
  bool isNullOrEmpty() {
    return (this == null || (this?.isEmpty == true));
  }

  String? validateEmpty() {
    if (isNullOrEmpty()) {
      return LocaleProvider.current.input_required;
    }
    return null;
  }

  double moneyToDouble() {
    String text = this ?? "";
    if (text.isNullOrEmpty()) {
      return 0.0;
    }

    if (text.contains("R\$")) {
      text = text.replaceAll("R\$", "").trim();
    }
    String v = text.replaceAll(",", "").trim();
    v = v.replaceAll(".", "").trim();
    return (int.parse(v) / 100);
  }

  String or({String orValue = ""}) {
    return orValue;
  }

  String? changeCommaToDot() {
    if (isNullOrEmpty()) {
      return null;
    }

    if (this!.contains(",")) {
      return this!.replaceAll(",", ".");
    }
    return this;
  }
}
