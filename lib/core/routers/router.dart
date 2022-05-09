import 'package:calculo_ar_condicionado/presentation/views/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class Routers {
  static Map<String, Widget Function(BuildContext)> routers =
      <String, WidgetBuilder>{'/': (_) => const Dashboard()};

  static String initial = '/';

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
