import 'package:ecommerceapp/controller/on_boarding_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/constant/font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      width: 159,
      child: ElevatedButton(
          onPressed: () {
            controller.nextPage();
          },
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              color: Colors.white,
              fontFamily: 'ElMessiri',
              fontWeight: AppFont.semiBold,
              fontSize: 20,
            ),
            foregroundColor: Colors.white,
            backgroundColor: AppColor.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: GetBuilder<OnBoardingControllerImpl>(
            builder: (controller) => Text(
              controller.isLastPage ? "Get Started" : "Continue",
            ),
          )),
    );
  }
}
