import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:sarpras/auth/forgot_password.dart';
import 'package:sarpras/auth/login_success.dart';
import 'package:sarpras/auth/otp_verification.dart';
import 'package:sarpras/auth/set_profile.dart';
import 'package:sarpras/auth/sign_in.dart';
import 'package:sarpras/auth/sign_up.dart';

final Map<String, WidgetBuilder> routes = {
  SignIn.routeName: (context) => SignIn(),
  SignUp.routeName: (context) => SignUp(),
  // SetProfile.routeName: (context) => SetProfile(),
  OtpVerification.routeName: (context) => OtpVerification(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
};