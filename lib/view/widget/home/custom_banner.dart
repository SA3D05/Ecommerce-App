import 'package:ecommerceapp/controller/home_controller.dart';
import 'package:ecommerceapp/core/constant/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBannerHome extends GetView<HomeController> {
  const CustomBannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: PageView.builder(
        controller: PageController(),
        // onPageChanged: (val) => controller.onPageChanged(val),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Image.asset(
              AppImageAsset.onBoardingImage2,
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}
