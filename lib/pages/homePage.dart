import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
              right: 24,
              left: 24,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HI',
                      style: tittleStyle,
                    ),
                    Text(
                      'Aji Prasetyo',
                      style: subtittleStyle,
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/image_profile.png',
                  width: 58,
                  height: 58,
                )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
