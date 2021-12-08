import 'package:find_job/model/category_model.dart';
import 'package:find_job/model/category_model.dart';
import 'package:find_job/model/job_model.dart';
import 'package:find_job/provider/job_provider.dart';
import 'package:find_job/theme.dart';
import 'package:find_job/widget/just_posted.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class detailePage extends StatelessWidget {
  final CateModel category;

  detailePage({this.category});

  @override
  Widget build(BuildContext context) {
    var jobProvider = Provider.of<JobProvider>(context);

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
              category.imageUrl,
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
              category.name,
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
            FutureBuilder<List<JobModel>>(
              future: jobProvider.getJobsCate(category.name),
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
