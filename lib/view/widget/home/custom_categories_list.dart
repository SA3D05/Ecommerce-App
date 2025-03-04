import 'package:ecommerceapp/data/model/categories_modle.dart';
import 'package:flutter/material.dart';

class CustomCategoriesListHome extends StatelessWidget {
  final List categories;
  const CustomCategoriesListHome({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          CategoriesModle categoriesModle =
              CategoriesModle.fromJson(categories[index]);
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    Icons.phone_iphone_outlined,
                    size: 60,
                    color: Colors.white,
                  ) // ),
                  ),
              Text(
                "${categoriesModle.categorieNameEn}",
              )
            ],
          );
        });
  }
}
