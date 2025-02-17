import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp() {}
  goToVerifyEmail() {}
  goToLogin() {}
}

class SignUpConrollerImpl extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToLogin() {
    Get.back();
    return super.goToLogin();
  }

  @override
  goToVerifyEmail() {
    Get.toNamed(AppRoute.verifyEmailSignUp);
    return super.goToVerifyEmail();
  }
}
