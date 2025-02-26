import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/static/remot/auth/verify_code_sign_up.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

abstract class VeifyEmailSignUpController extends GetxController {
  checkCode(String verifyCode) {}
  goToSuccess() {}
}

class VeifyEmailSignUpControllerImpl extends VeifyEmailSignUpController {
  late String email;
  StatusRequest statusRequest = StatusRequest.none;
  VerifyCodeSignUpData verifyCodeSignUpData =
      VerifyCodeSignUpData(Get.find<Crud>());

  @override
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

    return super.checkCode(verifyCode);
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }
}
