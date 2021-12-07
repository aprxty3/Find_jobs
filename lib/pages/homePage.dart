import 'package:find_job/provider/user_provider.dart';
import 'package:find_job/theme.dart';
import 'package:find_job/widget/job_cart.dart';
import 'package:find_job/widget/just_posted.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);

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
                      userProvider.user.name, 
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Row(
                    children: [
                      jobCart(
                        text: 'Website Developer',
                        imageUrl: 'assets/image_category1.png',
                      ),
                      SizedBox(width: 16),
                      jobCart(
                        text: 'Mobile Developer',
                        imageUrl: 'assets/image_category2.png',
                      ),
                      SizedBox(width: 16),
                      jobCart(
                        text: 'App Designer',
                        imageUrl: 'assets/image_category3.png',
                      ),
                      SizedBox(width: 16),
                      jobCart(
                        text: 'Content Writer',
                        imageUrl: 'assets/image_category4.png',
                      ),
                      SizedBox(width: 16),
                      jobCart(
                        text: 'Video Grapher',
                        imageUrl: 'assets/image_category5.png',
                      ),
                      SizedBox(width: 24),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text(
                  'Just Posted',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xff272C2F),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 24),
              justPoste(
                imageURL: 'assets/icon_google.png',
                jobText: 'Front-End Developer',
                comText: 'Google',
              ),
              justPoste(
                imageURL: 'assets/icon_facebook.png',
                jobText: 'Cloud Engineer',
                comText: 'Facebook',
              ),
              justPoste(
                imageURL: 'assets/icon_instagram.png',
                jobText: 'Data Scientist',
                comText: 'Instagram',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Colors.black,
          elevation: 0,
          currentIndex: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar1.png'),
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar2.png'),
              ),
              label: 'notification',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar3.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar4.png'),
              ),
              label: 'profile',
            ),
          ],
        ),
      ),
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
