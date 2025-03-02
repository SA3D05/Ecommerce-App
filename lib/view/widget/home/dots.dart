import 'package:ecommerceapp/controller/home_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotsHome extends StatelessWidget {
  const DotsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  controller.banners.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      height: 10,
                      width: index == controller.currentIndex ? 20 : 10,
                      decoration: BoxDecoration(
                          color: index == controller.currentIndex
                              ? AppColor.primary
                              : AppColor.light,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                )
              ],
            ));
  }
}
