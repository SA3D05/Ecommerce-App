import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/url_api.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class AddServerController extends GetxController {
  Crud crud = Crud();
  late TextEditingController serverUrl;
  StatusRequest statusRequest = StatusRequest.none;

  void onInit() {
    serverUrl = TextEditingController();
    super.onInit();
  }

  getData() async {
    var response = await crud.postData("${serverUrl.text}/test.php", {});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }

  checkServer() async {
    statusRequest = StatusRequest.loading;
    update();
    //////////////

    var response = await getData();

    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        AppUrl.baseUrl = serverUrl.text;
        Get.offAllNamed(AppRoute.changeLanguage);
      } else {
        Fluttertoast.showToast(
            toastLength: Toast.LENGTH_LONG, msg: "server is not correct!");
        statusRequest = StatusRequest.failure;
      }
    } else {
      Fluttertoast.showToast(
          toastLength: Toast.LENGTH_LONG, msg: "error $statusRequest");
    }
    update();
  }
}
