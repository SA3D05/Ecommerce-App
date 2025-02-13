import 'package:ecommerceapp/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;

  AppServices appServices = Get.find();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    appServices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = appServices.sharedPreferences.getString("lang");

    if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "fr") {
      language = const Locale("fr");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
