import 'package:ecommerceapp/core/constant/font.dart';
import 'package:ecommerceapp/core/functions/translate_db.dart';
import 'package:ecommerceapp/data/model/product_modle.dart';
import 'package:ecommerceapp/url_api.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductListHome extends StatelessWidget {
  final List products;

  const ProductListHome({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 20,
          mainAxisExtent: 160,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          ProductModle product = ProductModle.fromJson(products[index]);
          String productImageLink =
              "${AppUrl.productsImg}/${product.productImage}";
          return InkWell(
            onTap: () => print("object"),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // صورة المنتج مع زر المفضلة
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 204, 203, 203),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Center(
                            child:
                                CachedNetworkImage(imageUrl: productImageLink)),
                        // زر المفضلة
                        const Positioned(
                          top: 8,
                          right: 8,
                          child: (Icon(Icons.favorite_rounded)),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  // color: Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min, // منع تجاوز الحجم
                    children: [
                      // اسم المنتج
                      Text(
                        translateDb(
                            product.productNameAr!, product.productNameEn!),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // التقييم وعدد المبيعات
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.black, size: 20),
                          const SizedBox(width: 2),
                          const Text(
                            "4.5",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Text(
                              '199 sold',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: AppFont.bold),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '\$${product.productPrice!.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
          ;
        },
      ),
    );
  }
}
