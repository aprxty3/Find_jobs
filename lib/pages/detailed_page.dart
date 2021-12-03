import 'package:find_job/theme.dart';
import 'package:find_job/widget/just_posted.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/bg.png',
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
              SizedBox(
                height: 30,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Big Companies',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xff272C2F),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 24),
                      justPosted(
                        imageURL: 'assets/icon_google.png',
                        jobText: 'Front-End Developer',
                        comText: 'Google',
                      ),
                      justPosted(
                        imageURL: 'assets/icon_facebook.png',
                        jobText: 'Cloud Engineer',
                        comText: 'Facebook',
                      ),
                      justPosted(
                        imageURL: 'assets/icon_instagram.png',
                        jobText: 'Data Scientist',
                        comText: 'Instagram',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New StartUp',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xff272C2F),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 24),
                      justPosted(
                        imageURL: 'assets/startup1.png',
                        jobText: 'Back-End Developer',
                        comText: 'Climb',
                      ),
                      justPosted(
                        imageURL: 'assets/startup2.png',
                        jobText: 'Site Realibility Engineer',
                        comText: 'Rocket',
                      ),
                      justPosted(
                        imageURL: 'assets/startup3.png',
                        jobText: 'Machine Learning',
                        comText: 'Rainbow',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
