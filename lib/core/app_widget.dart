import 'package:calculo_ar_condicionado/core/colors_app.dart';
import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:calculo_ar_condicionado/presentation/views/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      supportedLocales: LocaleProvider.delegate.supportedLocales,
      localizationsDelegates: const [
        LocaleProvider.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      title: "Calculo BTU e consumo de energia de ar-condicionado",
      theme: lightTheme,
      initialRoute: "/",
      routes: {
        "/": (context) => const Dashboard(),
      },
    );
  }

  ThemeData get lightTheme => ThemeData.light().copyWith(
      backgroundColor: ColorsApp.colorBackground,
      primaryColor: ColorsApp.colorPrimary,
      primaryColorDark: ColorsApp.colorPrimaryDark,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.teal, unselectedItemColor: Colors.blueGrey),
      textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme).apply(
        bodyColor: ColorsApp.colorPrimaryDark,
        decorationColor: ColorsApp.colorAccent,
      ),
      scaffoldBackgroundColor: ColorsApp.colorBackground,
      inputDecorationTheme: InputDecorationTheme(
          errorStyle: const TextStyle(color: Colors.red),
          labelStyle: const TextStyle(fontSize: 18.0),
          hintStyle: const TextStyle(fontSize: 18.0),
          border: InputBorder.none,
          counterStyle: TextStyle(color: ColorsApp.colorPrimaryDark),
          filled: true,
          errorMaxLines: 2,
          fillColor: ColorsApp.colorPrimary.withOpacity(0.1)),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: ColorsApp.colorAccent));
}
