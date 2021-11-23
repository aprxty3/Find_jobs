import 'package:find_job/pages/startedPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget   {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startTimer();
  }
}

startTimer() async {
  var duration = Duration(seconds: 5);
  return Timer(duration, route);
}

route() {
  BuildContext context;
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => GetStartedPage()));
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xff4141A4),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              'assets/logo.png',
              width: 59,
              height: 76,
            ),
          ),
          SizedBox(height: 50),
          Text(
            'FIND JOBS',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
