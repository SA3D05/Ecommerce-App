import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/static/remot/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login() {}
  goToSignUp() {}
  hideField() {}

  goToForgotPassword() {}
}

class LoginConrollerImpl extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isHide = true;

  late TextEditingController email;
  late TextEditingController password;
  StatusRequest? statusRequest;
  LoginData loginData = LoginData(Get.find<Crud>());

  @override
  hideField() {
    isHide = !isHide;
    update();
    return super.hideField();
  }

  @override
  login() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.getData(
        email.text,
        password.text,
      );
      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.offAllNamed(AppRoute.home);
        } else {
          Fluttertoast.showToast(
              toastLength: Toast.LENGTH_LONG,
              msg: "email or password is wrong");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      Fluttertoast.showToast(
          toastLength: Toast.LENGTH_LONG,
          msg: "make shure all the fields in a good form");
    }

    return super.login();
  }

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
