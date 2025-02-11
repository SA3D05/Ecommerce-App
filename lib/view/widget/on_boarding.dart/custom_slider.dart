import 'package:ecommerceapp/controller/on_boarding_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) => controller.onPageChange(val),
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(onBoardingList[index].title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                Image.asset(
                  onBoardingList[index].image,
                  scale: 2.5,
                ),
                Text(
                  onBoardingList[index].description,
                  style: const TextStyle(
                      fontSize: 16, height: 1.6, color: AppColor.gray),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
