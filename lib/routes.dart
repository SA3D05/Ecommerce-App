import 'package:ecommerceapp/view/screen/auth/forgot_password.dart';
import 'package:ecommerceapp/view/screen/auth/login.dart';
import 'package:ecommerceapp/view/screen/auth/sign_up.dart';
import 'package:ecommerceapp/view/screen/auth/verify_email.dart';
import 'package:ecommerceapp/view/screen/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => Login(),
  AppRoute.signUp: (context) => SignUp(),
  AppRoute.forgotPassword: (context) => ForgotPassword(),
  AppRoute.verifyEmail: (context) => VerifyEmail(),
  AppRoute.onBoarding: (context) => OnBoarding(),
};
