import 'package:calculo_ar_condicionado/core/routers/router.dart';
import 'package:calculo_ar_condicionado/notification/custom_notification.dart';
import 'package:calculo_ar_condicionado/notification/notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class AppMessaging {
  final FirebaseMessaging _instance = FirebaseMessaging.instance;
  final AppNotificationService _appNotificationService;

  AppMessaging(this._appNotificationService);

  init() {
    _instance.setForegroundNotificationPresentationOptions(
        badge: true, sound: true, alert: true);
    getDeviceFirebaseToken();
    _onMessage();
    _onMessageOpened();
  }

  Future<String?> getDeviceFirebaseToken() async {
    final String? token = await _instance.getToken();
    debugPrint('===================');
    debugPrint('TOKEN FIREBASE: $token');
    debugPrint('===================');
    return token;
  }

  _onMessage() {
    FirebaseMessaging.onMessage.listen((message) {
      RemoteNotification? notification = message.notification;
      debugPrint(notification?.body);

      AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null) {
        _appNotificationService.showNotification(CustomNotification(
            id: android.hashCode,
            title: notification.title,
            body: notification.body,
            payload: null));
      }
    });
  }

  _onMessageOpened() {
    FirebaseMessaging.onMessageOpenedApp.listen(_goToPage);
  }

  _goToPage(RemoteMessage message) {
    final String router = message.data['route'] ?? '/';
    Routers.navigatorKey.currentState?.pushNamed(router);
  }
}
