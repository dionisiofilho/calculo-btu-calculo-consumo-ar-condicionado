import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class AppCrashlytics{

  static final FirebaseCrashlytics _intance = FirebaseCrashlytics.instance;

  static void testCrash() async{
    _intance.crash();
  }

  static void init(){
    _intance.recordFlutterError;
  }

  static void enableDevMode(){
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }

}