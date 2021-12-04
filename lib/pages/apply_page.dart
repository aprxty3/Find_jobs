import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class applyPage extends StatefulWidget {
  @override
  State<applyPage> createState() => _applyPageState();
}

class _applyPageState extends State<applyPage> {
  bool isAplied = false;
  @override
  Widget build(BuildContext context) {
    Widget applyButton() {
      return Container(
        width: 200,
        height: 45,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff4141A4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          onPressed: () {
            setState(() {
              isAplied = !isAplied;
            });
          },
          child: Text(
            'Apply for Job',
            style: buttonStyle,
          ),
        ),
      );
    }

    Widget cancelapplyButton() {
      return Container(
        width: 200,
        height: 45,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffFD4F56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          onPressed: () {
            setState(() {
              isAplied = !isAplied;
            });
          },
          child: Text(
            'Cancel Apply',
            style: buttonStyle,
          ),
        ),
      );
    }

    Widget cancelapplyfly() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
        decoration: BoxDecoration(
          color: Color(0xffECEDF1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          'You have applied this job and the \nrecruiter will contact you',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xffA2A6B4),
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              isAplied ? cancelapplyfly() : SizedBox(),
              Image.asset(
                'assets/icon_google.png',
                width: 60,
                height: 60,
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 24),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About the job',
                          style: applyTheme3,
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Full-Time On Site',
                              style: applyTheme4,
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Start at \$18,000 per month',
                              style: applyTheme4,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Qualification',
                          style: applyTheme3,
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Candidate must possess at least a \nBachelor\'s Degree.',
                              style: applyTheme4,
                            )
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Able to use Microsoft Office and Google \nbased service.',
                              style: applyTheme4,
                            )
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Have an excellent time management, \ngood at organized and details',
                              style: applyTheme4,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Responbilities',
                          style: applyTheme3,
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Initiate and promote any programs, events, \ntraining, or activities.',
                              style: applyTheme4,
                            )
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Assessing and anticipating needs and \ncollaborate with Division.',
                              style: applyTheme4,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              isAplied ? cancelapplyButton() : applyButton(),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 30,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Message Recruiter',
                    style: button2Style,
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
