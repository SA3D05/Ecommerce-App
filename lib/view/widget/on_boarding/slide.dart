import 'package:ecommerceapp/controller/on_boarding_controller.dart';
import 'package:ecommerceapp/core/constant/font.dart';
import 'package:ecommerceapp/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlideOnBoarding extends GetView<OnBoardingControllerImpl> {
  const SlideOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) => controller.onPageChanged(val),
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Image.asset(onBoardingList[index].image),
              Text(
                onBoardingList[index].title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'ElMessiri',
                  fontWeight:
                      AppFont.bold, // يمكنك تجربة FontWeight.w400 أو w700 وهكذا
                  fontSize: 32,
                ),
              ),
              Text(onBoardingList[index].description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    height: 1.2,
                    fontFamily: 'ElMessiri',
                    fontWeight: AppFont
                        .medium, // يمكنك تجربة FontWeight.w400 أو w700 وهكذا
                    fontSize: 16,
                  )),
            ],
          ),
        );
      },
    );
  }
}
