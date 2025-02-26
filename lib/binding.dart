import 'package:ecommerceapp/core/class/crud.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
