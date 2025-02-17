import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  checkEmail() {}
}

class ForgotPasswordControllerImpl extends ForgotPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  @override
  checkEmail() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.toNamed(AppRoute.verifyEmailForgotPassword);
    } else {
      Get.snackbar("Error", "make shure all the fields in a good form");
    }

    return super.checkEmail();
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
