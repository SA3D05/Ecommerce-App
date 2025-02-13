import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  onPageChanged(int index) {}
  nextPage() {}
}

class OnBoardingControllerImpl extends OnBoardingController {
  int currentIndex = 0;
  late PageController pageController;

  bool get isLastPage => currentIndex == onBoardingList.length - 1;

  @override
  onPageChanged(int index) {
    currentIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();

    super.onInit();
  }

  @override
  nextPage() {
    currentIndex++;
    if (currentIndex > onBoardingList.length - 1) {
      Get.toNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentIndex,
          duration: Duration(milliseconds: 350), curve: Curves.easeInOut);
    }
  }
}
