import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login() {}
  goToSignUp() {}
  goToForgotPassword() {}
}

class LoginConrollerImpl extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  goToForgotPassword() {
    Get.toNamed(AppRoute.forgotPassword);
    return super.goToForgotPassword();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
    return super.goToSignUp();
  }
}
