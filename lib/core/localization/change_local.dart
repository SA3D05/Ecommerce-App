import 'package:ecommerceapp/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  AppServices appServices = Get.find<AppServices>();

  changeLang(String langCode) {
    appServices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(Locale(langCode));
  }
}
