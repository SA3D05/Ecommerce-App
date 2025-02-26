import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/static/remot/auth/forgot_password/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword() {}
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;
  StatusRequest statusRequest = StatusRequest.none;
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find<Crud>());

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  resetPassword() async {
    if (formState.currentState!.validate()) {
      if (password.text != rePassword.text) {
        return Fluttertoast.showToast(
            toastLength: Toast.LENGTH_LONG,
            msg: "error , make shur are same password");
      }
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.getData(
          Get.arguments['email'].toString(), password.text); // hna error
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.success);
        } else {
          Fluttertoast.showToast(
              toastLength: Toast.LENGTH_LONG,
              msg: "Error Try another password");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      Fluttertoast.showToast(
          toastLength: Toast.LENGTH_LONG,
          msg: "make shure all the fields in a good form");
    }
    return super.resetPassword();
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }
}
