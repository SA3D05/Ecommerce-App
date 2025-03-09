import 'package:ecommerceapp/controller/on_boarding_controller.dart';
import 'package:ecommerceapp/view/widget/on_boarding/custom_button.dart';
import 'package:ecommerceapp/view/widget/on_boarding/dots.dart';
import 'package:ecommerceapp/view/widget/on_boarding/slide.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return const Scaffold(
      body: Column(
        children: [
          Expanded(flex: 4, child: SlideOnBoarding()),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DotsOnBoarding(),
              Spacer(),
              CustomButtonOnBoarding(),
              Spacer(),
            ],
          ))
        ],
      ),
    );
  }
}
