import 'package:ecommerceapp/controller/home_controller.dart';
import 'package:ecommerceapp/data/model/categories_modle.dart';
import 'package:ecommerceapp/url_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomCategoriesListHome extends GetView<HomeController> {
  const CustomCategoriesListHome({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          CategoriesModle categoriesModle =
              CategoriesModle.fromJson(controller.categories[index]);
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () => controller.goToProductsPage(index),

              // onTap: () => print(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: SvgPicture.network(
                        "${AppUrl.categories}/${categoriesModle.categorieImage}"),
                  ),
                  Text(
                    "${categoriesModle.categorieNameEn}",
                  )
                ],
              ),
            ),
          );
        });
  }
}
