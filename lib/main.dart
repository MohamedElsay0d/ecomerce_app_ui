import 'package:ecomerce_app/views/AuthenticationScreen.dart';
import 'package:flutter/material.dart';

import 'views/OnboardingScreen.dart';
import 'views/SplashScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Splashscreen(),
      routes: {
        "onboardingscreen": (context) => const Onboardingscreen(),
        "Authenticationscreen": (context) => const Authenticationscreen(),
      },
    );
  }
}
