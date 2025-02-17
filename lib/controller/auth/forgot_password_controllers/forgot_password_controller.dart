import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  goToVerifyEmail() {}
}

class ForgotPasswordControllerImpl extends ForgotPasswordController {
  late TextEditingController email;
  @override
  goToVerifyEmail() {
    Get.toNamed(AppRoute.verifyEmailForgotPassword);
    return super.goToVerifyEmail();
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
