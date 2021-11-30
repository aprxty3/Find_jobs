import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Sign Up ',
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
