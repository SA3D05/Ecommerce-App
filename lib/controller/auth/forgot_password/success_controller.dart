import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccessController extends GetxController {
  goToLogin() {}
}

class SuccessControllerImpl extends SuccessController {
  late TextEditingController email;
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
    return super.goToLogin();
  }
}
