import 'package:ecommerceapp/controller/home_controller.dart';
import 'package:ecommerceapp/core/widget/handling_data_view.dart';
import 'package:ecommerceapp/view/widget/home/custom_banner.dart';
import 'package:ecommerceapp/view/widget/home/custom_categories_list.dart';
import 'package:ecommerceapp/view/widget/custom_search_row.dart';
import 'package:ecommerceapp/view/widget/home/custom_sections.dart';
import 'package:ecommerceapp/view/widget/home/dots.dart';
import 'package:ecommerceapp/view/widget/home/product_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(builder: (controller) {
      return HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: ListView(
            children: [
              const CustomSearchRow(),
              const SizedBox(
                height: 20,
              ),
              const CustomBannerHome(),
              const SizedBox(height: 10),
              const DotsHome(),
              const SizedBox(height: 20),
              CustomSectionsHome(
                title: "categories".tr,
              ),
              const SizedBox(
                height: 100,
                child: CustomCategoriesListHome(),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomSectionsHome(
                title: "popular".tr,
              ),
              ProductListHome(
                products: controller.products,
              )
            ],
          ),
        ),
      );
    });
  }
}
