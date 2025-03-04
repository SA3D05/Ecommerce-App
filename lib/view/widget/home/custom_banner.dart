import 'package:ecommerceapp/controller/home_controller.dart';
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
          return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              // height: 100,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(controller.banners[index], fit: BoxFit.cover));
        },
      ),
    );
  }
}
