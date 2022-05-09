import 'package:calculo_ar_condicionado/core/app_widget.dart';
import 'package:calculo_ar_condicionado/core/firebase/app_messaging.dart';
import 'package:calculo_ar_condicionado/notification/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      Provider<AppNotificationService>(
        create: (context) => AppNotificationService(),
      ),
      Provider<AppMessaging>(
          create: (context) =>
              AppMessaging(context.read<AppNotificationService>()))
    ],
    child: const AppWidget(),
  ));
}
