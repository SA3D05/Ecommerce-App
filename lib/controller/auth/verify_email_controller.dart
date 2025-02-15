import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  CheckCode() {}
  goToResetPassword() {}
}

class SignUpConrollerImpl extends SignUpController {
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
    Get.toNamed(AppRoute.login);
    return super.goToResetPassword();
  }
}
