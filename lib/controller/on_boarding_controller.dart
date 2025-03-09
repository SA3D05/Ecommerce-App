import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  int currentIndex = 0;
  late PageController pageController;

  bool get isLastPage => currentIndex == onBoardingList.length - 1;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  onPageChanged(int index) {
    currentIndex = index;
    update();
  }

  nextPage() {
    currentIndex++;
    if (currentIndex > onBoardingList.length - 1) {
      // set user alrady watched onboarding on shared prefrences.
      Get.find<AppServices>().sharedPreferences.setInt("step", 1);

      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentIndex,
          duration: const Duration(milliseconds: 350), curve: Curves.easeInOut);
    }
  }
}
