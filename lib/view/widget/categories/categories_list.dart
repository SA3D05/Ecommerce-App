import 'package:ecommerceapp/controller/procucts_controller.dart';
import 'package:ecommerceapp/data/model/categories_modle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesListProducts extends StatelessWidget {
  const CategoriesListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: Center(
          child: GetBuilder<ProductsController>(
            builder: (controller) => ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.categories.length,
                itemBuilder: (context, index) {
                  CategoriesModle categoriesModle =
                      CategoriesModle.fromJson(controller.categories[index]);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
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
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            height: 5,
                            width: controller.selectedCat == index ? 50 : 0,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
