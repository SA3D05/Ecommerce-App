import 'package:ecommerceapp/controller/procucts_controller.dart';
import 'package:ecommerceapp/data/model/categories_modle.dart';
import 'package:ecommerceapp/url_api.dart';
import 'package:ecommerceapp/view/widget/custom_search_row.dart';
import 'package:ecommerceapp/view/widget/home/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProductsController());
    return Scaffold(
      appBar: const CustomAppbarHome(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GetBuilder<ProductsController>(
          builder: (controller) => ListView(children: [
            const CustomSearchRowHome(),
            SizedBox(
                height: 50,
                child: Center(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.categories.length,
                      itemBuilder: (context, index) {
                        CategoriesModle categoriesModle =
                            CategoriesModle.fromJson(
                                controller.categories[index]);
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: InkWell(
                            onTap: () => controller.changeSelectedCat(index),

                            // onTap: () => print(index),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${categoriesModle.categorieNameEn}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.easeInOut,
                                  height: 5,
                                  width:
                                      controller.selectedCat == index ? 50 : 0,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                )),
            // GridView.builder(
            //   shrinkWrap: true,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2),
            //   itemBuilder: (context, index) => Card(
            //     color: Colors.amber,
            //     child: Image.network("${AppUrl.products}/samsung.png"),
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
