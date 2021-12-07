import 'package:find_job/pages/homePage.dart';
import 'package:find_job/pages/sign_in.dart';
import 'package:find_job/pages/sign_up.dart';
import 'package:find_job/pages/splash.dart';
import 'package:find_job/pages/started_page.dart';
import 'package:find_job/provider/auth_provider.dart';
import 'package:find_job/provider/cate_provider.dart';
import 'package:find_job/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider<CateProvider>(
          create: (context) => CateProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/onboarding': (context) => GetStartedPage(),
          '/sign-in': (context) => SignIn(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => homePage(),
        },
      ),
    );
  }
}
