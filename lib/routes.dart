import 'package:ecommerceapp/view/screen/auth/login.dart';
import 'package:ecommerceapp/view/screen/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => Login(),
  AppRoute.onBoarding: (context) => OnBoarding(),
};
