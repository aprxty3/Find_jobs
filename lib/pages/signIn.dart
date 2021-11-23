import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 30, left: 24),
          child: Column(
            children: [
              Text(
                'Sign',
                style: tittleStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
