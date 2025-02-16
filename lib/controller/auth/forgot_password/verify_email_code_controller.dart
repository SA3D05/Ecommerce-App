import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyEmailCodeController extends GetxController {
  checkCode() {}
  goToResetPassword() {}
}

class VerifyEmailCodeControllerImpl extends VerifyEmailCodeController {
  // @override
  // void onInit() {

  //   super.onInit();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  goToResetPassword() {
    Get.toNamed(AppRoute.resetPassword);
    return super.goToResetPassword();
  }
}
