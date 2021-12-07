import 'package:find_job/model/category_model.dart';
import 'package:find_job/model/job_model.dart';
import 'package:find_job/provider/cate_provider.dart';
import 'package:find_job/provider/job_provider.dart';
import 'package:find_job/provider/user_provider.dart';
import 'package:find_job/theme.dart';
import 'package:find_job/widget/job_cart.dart';
import 'package:find_job/widget/just_posted.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    var cateProvider = Provider.of<CateProvider>(context);
    var jobProvider = Provider.of<JobProvider>(context);

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

    Widget hotCategories() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Text(
              'Hot Categories',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 200,
            child: FutureBuilder<List<CateModel>>(
              future: cateProvider.getCate(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  int index = 1;

                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: snapshot.data
                        .map(
                          (category) => jobCart(
                            imageUrl: category.imageUrl,
                            name: category.name,
                          ),
                        )
                        .toList(),
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      );
    }

    Widget justPosted() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Just Posted',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            FutureBuilder<List<JobModel>>(
              future: jobProvider.getJobs(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Column(
                      children: snapshot.data
                          .map((job) => justPoste(
                                imageURL: job.companyLogo,
                                jobText: job.name,
                                comText: job.companyName,
                              ))
                          .toList());
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ), // justPoste(
            //   imageURL: 'assets/icon_google.png',
            //   jobText: 'Front-End Developer',
            //   comText: 'Google',
            // ),
            // justPoste(
            //   imageURL: 'assets/icon_instagram.png',
            //   jobText: 'UI Designer',
            //   comText: 'Instagram',
            // ),
            // justPoste(
            //   imageURL: 'assets/icon_facebook.png',
            //   jobText: 'Data Scientist',
            //   comText: 'Facebook',
            // ),
          ],
        ),
      );
    }

    Widget body() {
      return ListView(
        children: [
          header(),
          hotCategories(),
          justPosted(),
        ],
      );
    }

    Widget bottomNavBar() {
      return BottomNavigationBar(
        elevation: 0,
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
      );
    }

    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: body(),
    );
  }
}
