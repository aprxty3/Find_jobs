import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 24,
            right: 123,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: tittleStyle,
              ),
              Text(
                'Begin New Journey',
                style: subtittleStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
