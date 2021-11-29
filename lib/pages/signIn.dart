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
            top: 40,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: tittleStyle,
              ),
              Text(
                'Build Your Career',
                style: subtittleStyle,
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image_sign_in.png',
                      width: 261,
                      height: 240,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
