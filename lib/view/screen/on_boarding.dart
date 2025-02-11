import 'package:ecommerceapp/controller/on_boarding_controller.dart';
import 'package:ecommerceapp/view/widget/on_boarding.dart/custom_button.dart';
import 'package:ecommerceapp/view/widget/on_boarding.dart/custom_slider.dart';
import 'package:ecommerceapp/view/widget/on_boarding.dart/dot_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 3, child: CustomSliderOnboarding()),
          Expanded(
              child: Column(
            children: [
              DotControllerOnBoarding(),
              Spacer(flex: 2),
              CustomButtonOnBoarding(),
              Spacer()
            ],
          )),
        ],
      ),
    );
  }
}
