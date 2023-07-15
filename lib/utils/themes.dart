import 'package:flutter/material.dart';
import 'package:sarpras/utils/constant.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: CusColors.appColor,
    fontFamily: "Poppins",
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    inputDecorationTheme: inputDecorationTheme()
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    labelStyle: TextStyle(
        color: CusColors.grey200,
        fontSize: 16
    ),
    hintStyle: TextStyle(
        color: CusColors.grey100
    ),
    suffixIconColor: CusColors.grey200,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    focusColor: CusColors.titleColor,
    contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
  );
}