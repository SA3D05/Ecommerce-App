import 'package:ecommerceapp/controller/procucts_controller.dart';
import 'package:ecommerceapp/core/widget/handling_data_view.dart';
import 'package:ecommerceapp/view/widget/categories/categories_list.dart';
import 'package:ecommerceapp/view/widget/categories/product_list.dart';
import 'package:ecommerceapp/view/widget/custom_search_row.dart';
import 'package:ecommerceapp/view/widget/home/custom_appbar.dart';
import 'package:flutter/material.dart';

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
          builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView(
                // shrinkWrap: true,
                children: [
                  const CustomSearchRow(),
                  const CategoriesListProducts(),
                  const ProductList(),
                ]),
          ),
        ),
      ),
    );
  }
}
