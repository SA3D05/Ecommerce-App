import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  goToCheckCode() {}
}

class ForgotPasswordControllerImpl extends ForgotPasswordController {
  late TextEditingController email;
  @override
  goToCheckCode() {
    Get.toNamed(AppRoute.verifyEmailCode);
    return super.goToCheckCode();
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
