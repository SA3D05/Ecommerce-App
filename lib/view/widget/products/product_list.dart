import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerceapp/controller/procucts_controller.dart';
import 'package:ecommerceapp/core/functions/translate_db.dart';
import 'package:ecommerceapp/data/model/product_modle.dart';
import 'package:ecommerceapp/url_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(
      builder: (controller) => GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            mainAxisExtent: 200,
          ),
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            ProductModle product =
                ProductModle.fromJson(controller.products[index]);
            return InkWell(
              onTap: () => controller.goToProductDetails(product),
              child: Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Hero(
                          tag: product.productId!,
                          child: CachedNetworkImage(
                              imageUrl:
                                  "${AppUrl.productsImg}/${product.productImage}"),
                        )),
                        Text(translateDb(
                            product.productNameAr!, product.productNameEn!)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${product.productPrice}\$",
                              style: const TextStyle(fontSize: 25),
                            ),
                            const Icon(Icons.favorite_outline_rounded)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
