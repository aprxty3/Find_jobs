import 'package:find_job/pages/signIn.dart';
import 'package:find_job/pages/splash.dart';
import 'package:find_job/pages/startedPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => GetStartedPage(),
        '/sign-in': (context) => SignIn(),
        // '/sign-un': (context) => SignUnPage(),
        // '/home': (context) => HomePage(),
      },
    );
  }
}
