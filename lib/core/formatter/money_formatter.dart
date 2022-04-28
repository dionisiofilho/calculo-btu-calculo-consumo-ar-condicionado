import 'package:calculo_ar_condicionado/core/extensions/string_extension.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MoneyFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final StringBuffer newText = StringBuffer();
    final nf =
        NumberFormat.currency(locale: "pt_BR", symbol: "R\$", decimalDigits: 2);

    nf.maximumFractionDigits = 2;
    nf.minimumFractionDigits = 2;

    if (!newValue.text.isNullOrEmpty()) {
      String text = newValue.text.trim();

      if (text.contains("R\$")) {
        text = text.replaceAll("R\$", "").trim();
      }
      String v = text.replaceAll(",", "").trim();
      v = v.replaceAll(".", "").trim();
      newText.write(nf.format(int.parse(v) / 100));
    }
    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
