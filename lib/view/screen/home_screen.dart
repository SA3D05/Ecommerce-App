import 'package:ecommerceapp/controller/home_screen_controller.dart';
import 'package:ecommerceapp/view/widget/home_nav_bar/custom_bottom_app_bar.dart';
import 'package:ecommerceapp/view/widget/home/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return GetBuilder<HomeScreenController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        // appBar: const CustomAppbarHome(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          hoverColor: Colors.white,
          elevation: 0.0,
          disabledElevation: 0.0,
          highlightElevation: 0.0,
          focusElevation: 0.0,
          hoverElevation: 0.0,
          shape: const CircleBorder(),
          onPressed: () {},
          child: const Icon(Icons.shopping_basket, color: Colors.black),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const CustomBottomAppBar(),
        body: SafeArea(child: controller.pages[controller.currentPage]),
      ),
    );
  }
}
