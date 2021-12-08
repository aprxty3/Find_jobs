import 'package:find_job/theme.dart';
import 'package:find_job/widget/just_posted.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailePage extends StatelessWidget {
  final String name;
  final String imageUrl;

  detailePage({this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 270,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: defaultMargin,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageUrl,
            ),
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '12,309 available',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    Widget companies() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Big Companies',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            justPoste(
              imageURL: 'assets/icon_google.png',
              jobText: 'Front-End Developer',
              comText: 'Google',
            ),
            justPoste(
              imageURL: 'assets/icon_instagram.png',
              jobText: 'UI Designer',
              comText: 'Instagram',
            ),
            justPoste(
              imageURL: 'assets/icon_facebook.png',
              jobText: 'Data Scientist',
              comText: 'Facebook',
            ),
          ],
        ),
      );
    }

    Widget newStartups() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Startups',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            justPoste(
              imageURL: 'assets/icon_google.png',
              jobText: 'Front-End Developer',
              comText: 'Google',
            ),
            justPoste(
              imageURL: 'assets/icon_instagram.png',
              jobText: 'UI Designer',
              comText: 'Instagram',
            ),
            justPoste(
              imageURL: 'assets/icon_facebook.png',
              jobText: 'Data Scientist',
              comText: 'Facebook',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            companies(),
            newStartups(),
          ],
        ),
      ),
    );
  }
}
