import 'package:azkar_app/screens/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:azkar_app/screens/azkar_screen.dart';
import 'package:azkar_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales:  [
        Locale('ar'),
      ],
      locale: Locale('ar'),
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen' : (context) => SplashScreen(),
        '/azkar_screen' : (context) => AzkarScreen(),
        '/info_screen' : (context) => InfoScreen(),
      },
    );
  }
}



