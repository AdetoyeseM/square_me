import 'package:flutter/material.dart';
import 'package:square__me/screens/authentications/security_pin.dart';
import 'package:square__me/screens/dashboard/dashboard.dart';
import 'package:square__me/screens/onboarding_screens/onboarding_screen.dart';
import 'package:square__me/screens/themes/app_theme.dart';

GlobalKey<ScaffoldMessengerState> scaff = GlobalKey<ScaffoldMessengerState>();
GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaff,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: LightThemeData.lightAppTheme,
      title: "SquareMe",
      home:  const OnboardingScreen(),
    );
  }
}
