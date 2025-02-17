import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyEmailForgotPasswordController extends GetxController {
  checkCode() {}
  goToResetPassword() {}
}

class VerifyEmailForgotPasswordControllerImpl
    extends VerifyEmailForgotPasswordController {
  @override
  goToResetPassword() {
    Get.toNamed(AppRoute.resetPassword);
    return super.goToResetPassword();
  }
  // @override
  // void onInit() {

  //   super.onInit();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }
}
