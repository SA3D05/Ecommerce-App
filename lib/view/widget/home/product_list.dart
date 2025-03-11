import 'package:ecommerceapp/core/constant/font.dart';
import 'package:ecommerceapp/data/model/product_modle.dart';
import 'package:ecommerceapp/url_api.dart';
import 'package:flutter/material.dart';

class ProductListHome extends StatelessWidget {
  final List products;

  const ProductListHome({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        // physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
          mainAxisExtent: 150,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          ProductsModle productModle = ProductsModle.fromJson(products[index]);
          String productImageLink =
              "${AppUrl.productsImg}/${productModle.productImage}";
          return Container(
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFc5f1fc), // Light green background
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                if (productModle.productActive! == 1)
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'New',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: AppFont.bold,
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 130,
                    width: double.infinity,
                    child: Image.network(
                      productImageLink,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 10,
                  // padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productModle.productNameEn!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      // const SizedBox(height: 4),
                      Text(
                        '\$${productModle.productPrice!.toStringAsFixed(2)}',
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

            // Product Details
          );
        },
      ),
    );
  }
}
