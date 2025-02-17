import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VeifyEmailSignUpController extends GetxController {
  checkCode() {}
  goToSuccess() {}
}

class VeifyEmailSignUpControllerImpl extends VeifyEmailSignUpController {
  @override
  goToSuccess() {
    Get.offAllNamed(AppRoute.success);
    return super.goToSuccess();
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
