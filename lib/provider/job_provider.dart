import 'dart:convert';

import 'package:find_job/model/job_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

class jobProvider with ChangeNotifier {
  Future<List<jobModel>> getJobs() async {
    try {
      var response = await http.get(
        Uri.parse(
          'https://bwa-jobs.herokuapp.com/jobs',
        ),
      );

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        List<jobModel> jobs = [];
        List parsedJson = jsonDecode(response.body);

        parsedJson.forEach((job) {
          jobs.add(jobModel.fromJson(job));
        });

        return jobs;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
