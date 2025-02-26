import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/static/remot/auth/forgot_password/verify_password.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

abstract class VerifyEmailForgotPasswordController extends GetxController {
  checkCode(String code) {}
}

class VerifyEmailForgotPasswordControllerImpl
    extends VerifyEmailForgotPasswordController {
  StatusRequest? statusRequest;
  late String email;
  VerifyCodeData verifyCodeData = VerifyCodeData(Get.find<Crud>());
  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  checkCode(String code) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeData.getData(email, code);
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPassword, arguments: email);
      } else {
        Fluttertoast.showToast(
            toastLength: Toast.LENGTH_LONG, msg: "code is wrong");
        statusRequest = StatusRequest.failure;
      }
    }
    update();

    return super.checkCode(code);
  }
}
