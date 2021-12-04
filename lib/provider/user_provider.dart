import 'package:find_job/model/user_model.dart';
import 'package:flutter/material.dart';

class userProvider with ChangeNotifier {
  userModel _user;

  userModel get user => _user;

  set user(userModel newUser) {
    _user = newUser;
    notifyListeners();
  }
}
