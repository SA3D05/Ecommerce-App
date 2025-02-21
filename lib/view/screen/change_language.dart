import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/localization/change_local.dart';
import 'package:ecommerceapp/view/widget/change_language/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'choose_a_language'.tr,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonChangeLanguage(
            textButton: 'english'.tr,
            onPressed: () {
              controller.changeLang("en");
              Get.toNamed(AppRoute.onBoarding);
            },
          ),
          CustomButtonChangeLanguage(
            textButton: 'france'.tr,
            onPressed: () {
              controller.changeLang("fr");
              Get.toNamed(AppRoute.onBoarding);
            },
          ),
          CustomButtonChangeLanguage(
            textButton: 'arabic'.tr,
            onPressed: () {
              controller.changeLang("ar");
              Get.toNamed(AppRoute.onBoarding);
            },
          ),
        ],
      ),
    ));
  }
}
