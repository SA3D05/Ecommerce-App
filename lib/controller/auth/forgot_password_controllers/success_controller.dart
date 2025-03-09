import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessController extends GetxController {
  late TextEditingController email;
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
