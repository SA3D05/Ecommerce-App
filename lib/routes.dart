import 'package:ecommerceapp/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
};
