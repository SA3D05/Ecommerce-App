import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/static/remot/auth/forgot_password/check_email.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  checkEmail() {}
}

class ForgotPasswordControllerImpl extends ForgotPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  CheckEmailData checkEmailData = CheckEmailData(Get.find<Crud>());
  StatusRequest statusRequest = StatusRequest.none;
  late TextEditingController email;

  @override
  checkEmail() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.getData(
        email.text,
      );
      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.verifyEmailForgotPassword,
              arguments: {"email": email.text});
        } else {
          Fluttertoast.showToast(
              toastLength: Toast.LENGTH_LONG, msg: "email is wrong");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      Fluttertoast.showToast(
          toastLength: Toast.LENGTH_LONG,
          msg: "make shure all the fields in a good form");
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
