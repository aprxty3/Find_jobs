import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class applyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Image.asset(
                'assets/icon_google.png',
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Front-End Developer',
              style: applyTheme1,
            ),
            SizedBox(height: 2),
            Text(
              'Google, Inc • Jakarta',
              style: applyTheme2,
            )
          ],
        ),
      ),
    );
  }
}
