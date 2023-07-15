import 'package:flutter/material.dart';

class CusColors {
  static Color appColor = Color(0xFFE9E9E9);
  static Color mainColor = Color(0xFF496956);
  static Color titleColor = Color(0xFF454545);
  static Color subTitleColor = Color(0xFF968E8E);
  static Color grey100 = Color(0xFFAFA8A8);
  static Color grey200 = Color(0xFF968E8E);
  static Color grey300 = Color(0xFF777777);
  static Color pinkMain = Color(0xFFE45986);
  static Color whiteMain = Color(0xFFDCDCDC);
  static Color green200 = Color(0xFF384E41);
  static Color buttonBg = Color(0xFF6B9A7E);
  static Color buttonText = Color(0xFFEAEAEA);
}

Color kblue = Color(0xFF6B9A7E);
Color kwhite = Color(0xFFEBEBEB);
Color kblack = Color(0xFF000000);
Color kbrown = Color(0xFF384E41);
Color kbrown300 = Color(0xFFC0C0C0);
Color kgrey = Color(0xFFC0C0C0);
Color kijo = Color(0xff384E41);
Color kabu = Color(0xff5F6F65);
Color kgelap = Color(0xff5F6F65);

final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emailNullError = "Please Enter your email";
const String emailInvalidError = "Please Enter a valid email";
const String passwordNullError = "Please Enter your password";
const String passwordShortError = "Please is too short";
const String passwordPassError = "Please doesn't match";

final otpInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(
      vertical: 15,
    ),
    border: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: CusColors.grey300)
  );
}

OutlineInputBorder activedAuthInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: CusColors.mainColor),
      gapPadding: 10
  );
}

OutlineInputBorder authInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: CusColors.grey200),
      gapPadding: 10
  );
}