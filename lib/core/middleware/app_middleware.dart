import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMiddleware extends GetMiddleware {
  AppServices appServices = Get.find<AppServices>();
  @override
  RouteSettings? redirect(String? route) {
    if (appServices.sharedPreferences.getInt("step") == 2) {
      return const RouteSettings(name: AppRoute.home);
    }
    if (appServices.sharedPreferences.getInt("step") == 1) {
      return const RouteSettings(name: AppRoute.login);
    }
    return null;
  }
}
