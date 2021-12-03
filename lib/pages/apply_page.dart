import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class applyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
