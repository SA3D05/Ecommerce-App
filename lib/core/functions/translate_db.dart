import 'package:ecommerceapp/core/services/services.dart';
import 'package:get/get.dart';

translateDb(String ar, String en) {
  AppServices appServices = Get.find<AppServices>();
  if (appServices.sharedPreferences.getString("lang") == "ar") {
    return ar;
  } else {
    return en;
  }
}
