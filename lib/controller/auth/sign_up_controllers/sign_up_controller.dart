import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/static/remot/auth/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  late TextEditingController phone;
  late TextEditingController password;
  StatusRequest? statusRequest;
  SignUpData signUpData = SignUpData(Get.find<Crud>());

  @override
  signUp() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signUpData.getData(
        username.text,
        email.text,
        phone.text,
        password.text,
      );
      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.toNamed(AppRoute.verifyEmailSignUp, arguments: {
            "email": email.text,
          });
        } else {
          Fluttertoast.showToast(
              toastLength: Toast.LENGTH_LONG,
              msg: "email or phone already exist");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      Fluttertoast.showToast(
          toastLength: Toast.LENGTH_LONG,
          msg: "make shure all the fields in a good form");
    }

    return super.signUp();
  }

  @override
  hideField() {
    isHide = !isHide;
    update();
    return super.hideField();
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
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
}
