import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class detailePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/image4.png',
                  width: 360,
                  height: 270,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 180, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Website Developer',
                        style: detailJob,
                      ),
                      Text(
                        '12,309 available',
                        style: detailJob2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
