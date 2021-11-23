import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/onboarding.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ));
  }
}
