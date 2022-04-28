
import 'package:intl/intl.dart';

extension DoubleExtension on double? {

  String toCurrency(){
    final nf = NumberFormat.currency(locale: "pt_BR", symbol: "R\$", decimalDigits: 2);

    nf.maximumFractionDigits = 2;
    nf.minimumFractionDigits = 2;

    return nf.format(this);
  }

}