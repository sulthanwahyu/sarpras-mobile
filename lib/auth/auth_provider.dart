import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier{
  bool _isSigned = false;
  bool get isSigned => isSigned;

  AuthProvider(){
    checkSign();
  }

  void checkSign() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    _isSigned = s.getBool("is_Signed") ?? false;
    notifyListeners();
  }
}