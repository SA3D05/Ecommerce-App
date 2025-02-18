import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpConroller extends GetxController {
  signUp() {}

  hideField() {}

  goToLogin() {}
}

class SignUpConrollerImpl extends SignUpConroller {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isHide = true;
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;

  @override
  hideField() {
    isHide = !isHide;
    update();
    return super.hideField();
  }

  @override
  void onInit() {
    print("==================== init");
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    print("==================== dispose");
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
  signUp() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.toNamed(AppRoute.verifyEmailSignUp);
    } else {
      Get.snackbar("Error", "make shure all the fields in a good form");
    }

    return super.signUp();
  }
}
