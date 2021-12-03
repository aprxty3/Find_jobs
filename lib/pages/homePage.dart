import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Categories',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Color(0xff272C2F),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 150,
                height: 200,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 16),
                    child: Text(
                      'Website Developer',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image_category1.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          SizedBox(height: 30),
          body(),
        ],
      ),
    );
  }
}
