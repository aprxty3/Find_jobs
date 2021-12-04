import 'dart:convert';

import 'package:find_job/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  Future<userModel> register(
    String email,
    String password,
    String name,
    String goal,
  ) async {
    try {
      var body = {
        'email': email,
        'password': password,
        'name': name,
        'goal': goal,
      };
      var response = await http.post(
        Uri.parse('https://bwa-jobs.herokuapp.com/register'),
        body: body,
      );

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        return userModel.fromJson(
          jsonDecode(response.body),
        );
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
