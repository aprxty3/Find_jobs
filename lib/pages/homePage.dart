import 'package:find_job/model/category_model.dart';
import 'package:find_job/model/job_model.dart';
import 'package:find_job/provider/cate_provider.dart';
import 'package:find_job/provider/job_provider.dart';
import 'package:find_job/provider/user_provider.dart';
import 'package:find_job/theme.dart';
import 'package:find_job/widget/job_cart.dart';
import 'package:find_job/widget/just_posted.dart';
import 'package:flutter/material.dart';
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
          margin: const EdgeInsets.all(0),
          child: Padding(
            padding: const EdgeInsets.only(
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
                const Spacer(),
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
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Text(
              'Hot Categories',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.all(0),
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
                            category: category,
                          ),
                        )
                        .toList(),
                  );
                }
                return const Center(
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
        padding: const EdgeInsets.only(
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
            const SizedBox(
              height: 24,
            ),
            FutureBuilder<List<JobModel>>(
              future: jobProvider.getJobs(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Column(
                      children:
                          snapshot.data.map((job) => justPoste(job)).toList());
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
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
        items: const [
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
