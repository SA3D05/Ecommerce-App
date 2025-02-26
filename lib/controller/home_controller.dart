import 'package:ecommerceapp/core/services/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  AppServices appServices = Get.find<AppServices>();
  String? username;
  initialData() {
    username = appServices.sharedPreferences.getString("email");
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
