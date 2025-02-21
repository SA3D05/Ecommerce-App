import 'package:ecommerceapp/controller/auth/login_controller.dart';
import 'package:ecommerceapp/core/class/crud.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut(() => LoginConrollerImpl(), fenix: true);
  }
}
