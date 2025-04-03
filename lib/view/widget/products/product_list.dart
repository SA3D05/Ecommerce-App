import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerceapp/controller/procucts_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/constant/font.dart';
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
            mainAxisExtent: 270,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            ProductModle product =
                ProductModle.fromJson(controller.products[index]);
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () => controller.goToProductDetails(product),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.light,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Center(
                              child: Hero(
                            tag: product.productId!,
                            child: CachedNetworkImage(
                                imageUrl:
                                    "${AppUrl.productsImg}/${product.productImage}"),
                          )),
                          // زر المفضلة
                          Positioned(
                            top: 8,
                            right: 8,
                            child: IconButton(
                                onPressed: () => controller.getPrint(),
                                icon: controller.products[index]
                                            ['is_favorite'] ==
                                        1
                                    ? const Icon(Icons.favorite_rounded)
                                    : const Icon(
                                        Icons.favorite_outline_rounded)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min, // منع تجاوز الحجم
                      children: [
                        Text(
                          translateDb(
                              product.productNameAr!, product.productNameEn!),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Colors.black, size: 20),
                            const SizedBox(width: 2),
                            const Text(
                              "4.5",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                '${product.productPrice} sold',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: AppFont.bold),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${product.productPrice}\$',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: AppFont.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
