import 'package:ecommerceapp/view/screen/auth/forgot_password/forgot_password.dart';
import 'package:ecommerceapp/view/screen/auth/sign_up/verify_email_sign_up.dart';
import 'package:ecommerceapp/view/screen/auth/success.dart';
import 'package:ecommerceapp/view/screen/auth/login.dart';
import 'package:ecommerceapp/view/screen/auth/forgot_password/reset_password.dart';
import 'package:ecommerceapp/view/screen/auth/sign_up/sign_up.dart';
import 'package:ecommerceapp/view/screen/auth/forgot_password/verify_email_forgot_pass.dart';
import 'package:ecommerceapp/view/screen/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // AUTH
  AppRoute.login: (context) => Login(),
  AppRoute.signUp: (context) => SignUp(),
  AppRoute.forgotPassword: (context) => ForgotPassword(),
  AppRoute.verifyEmailForgotPassword: (context) => VerifyEmailForgotPassword(),
  AppRoute.verifyEmailSignUp: (context) => VerifyEmailSignUp(),
  AppRoute.resetPassword: (context) => ResetPassword(),
  AppRoute.success: (context) => Success(),
  // ON BOARDING
  AppRoute.onBoarding: (context) => OnBoarding(),
};
