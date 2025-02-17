import 'package:ecommerceapp/controller/auth/login_controller.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginConrollerImpl(), fenix: true);
  }
}
