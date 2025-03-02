import 'package:ecommerceapp/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBannerHome extends GetView<HomeController> {
  const CustomBannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      // onPageChanged: (val) => controller.onPageChanged(val),
      itemCount: controller.banners.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Image.asset(controller.banners[index]),
        );
      },
    );
  }
}
