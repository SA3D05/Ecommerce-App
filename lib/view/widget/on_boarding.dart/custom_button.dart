import 'package:ecommerceapp/controller/on_boarding_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.onNext();
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColor.primary),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 10, horizontal: 100)),
        elevation: WidgetStateProperty.all(10),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(
        "Continue",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
