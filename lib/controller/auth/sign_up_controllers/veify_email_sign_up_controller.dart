import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/remot/auth/verify_code_sign_up.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class VeifyEmailSignUpController extends GetxController {
  late String email;
  StatusRequest statusRequest = StatusRequest.none;
  VerifyCodeSignUpData verifyCodeSignUpData =
      VerifyCodeSignUpData(Get.find<Crud>());

  checkCode(String verifyCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignUpData.getData(
      email,
      verifyCode,
    );
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.success);
      } else {
        Fluttertoast.showToast(
            toastLength: Toast.LENGTH_LONG, msg: "incorrect code");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
