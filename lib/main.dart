import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => OnboardingPage(),
        // '/sign-in': (context) => SignInPage(),
        // '/sign-un': (context) => SignUnPage(),
        // '/home': (context) => HomePage(),
      },
    );
  }
}
