import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  void onSkip();
  void onPageChange(int index);
  void onNext();
  void onDone();
}

class OnBoardingControllerImpl extends OnBoardingController {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void onSkip() {
    currentIndex = 2;
  }

  @override
  void onPageChange(int index) {
    currentIndex = index;
    update();
  }

  @override
  void onNext() {
    currentIndex++;
    pageController.animateToPage(currentIndex,
        duration: Duration(milliseconds: 350), curve: Curves.easeInOut);
  }

  @override
  void onDone() {
    currentIndex = 2;
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
