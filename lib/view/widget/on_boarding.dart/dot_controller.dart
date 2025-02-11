import 'package:ecommerceapp/controller/on_boarding_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotControllerOnBoarding extends StatelessWidget {
  const DotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(
        builder: (OnBoardingControllerImpl controller) {
      return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  height: 5,
                  width: controller.currentIndex == index ? 30 : 10,
                  decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(5)),
                ))
      ]);
    });
  }
}
