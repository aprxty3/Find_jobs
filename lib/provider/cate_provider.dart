import 'dart:convert';

import 'package:find_job/model/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CateProvider with ChangeNotifier {
  Future<List<CateModel>> getCate() async {
    try {
      var response = await http.get(
        Uri.parse('https://bwa-jobs.herokuapp.com/categories'),
      );

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        List<CateModel> categories = [];
        List parsedJson = jsonDecode(response.body);

        parsedJson.forEach((category) {
          categories.add(CateModel.fromJson(category));
        });

        return categories;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
