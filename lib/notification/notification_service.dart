import 'package:calculo_ar_condicionado/core/extensions/string_extension.dart';
import 'package:calculo_ar_condicionado/notification/custom_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../core/routers/router.dart';

class AppNotificationService {
  late FlutterLocalNotificationsPlugin localNotificationsPlugin;
  late AndroidNotificationDetails androidNotificationDetails;

  AppNotificationService() {
    localNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _setup();
  }

  void _setup() async {
    await _initializeNotification();
  }

  _initializeNotification() async {
    const androidIcon = AndroidInitializationSettings('@mipmap/ic_launcher');

    await localNotificationsPlugin.initialize(
        const InitializationSettings(android: androidIcon),
        onSelectNotification: _onSelect);
  }

  _onSelect(String? payload) {
    if (!payload.isNullOrEmpty()) {
      Navigator.of(Routers.navigatorKey.currentContext!).pushNamed(payload!);
    }
  }

  showNotification(CustomNotification customNotification) {
    androidNotificationDetails = const AndroidNotificationDetails(
        'channel_id', 'Cálculo',
        importance: Importance.max,
        priority: Priority.max,
        enableVibration: true);

    localNotificationsPlugin.show(
        customNotification.id,
        customNotification.title,
        customNotification.body,
        NotificationDetails(android: androidNotificationDetails),
        payload: customNotification.payload);
  }

  checkNotifications() async {
    final details =
        await localNotificationsPlugin.getNotificationAppLaunchDetails();
    if (details != null && details.didNotificationLaunchApp) {
      _onSelect(details.payload);
    }
  }
}
