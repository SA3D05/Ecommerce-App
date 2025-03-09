import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/data_source/static/remot/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginConroller extends GetxController {
  AppServices appServices = Get.find<AppServices>();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isHide = true;

  late TextEditingController email;
  late TextEditingController password;
  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find<Crud>());

  hideField() {
    isHide = !isHide;
    update();
  }

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
          appServices.sharedPreferences
              .setInt("id", response['data']['user_id']);
          appServices.sharedPreferences
              .setString("username", response['data']['user_name']);
          appServices.sharedPreferences
              .setString("email", response['data']['user_email']);
          appServices.sharedPreferences
              .setInt("phone", response['data']['user_phone']);
          appServices.sharedPreferences.setInt("step", 2);

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
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  goToForgotPassword() {
    Get.toNamed(AppRoute.forgotPassword);
  }

  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }
}
