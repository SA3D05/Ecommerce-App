import 'package:ecommerceapp/url_api.dart';
import 'package:flutter/material.dart';

class ProductImagesScroll extends StatelessWidget {
  final int productId;
  final String productImage;
  const ProductImagesScroll(
      {super.key, required this.productId, required this.productImage});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Hero(
          tag: productId,
          child: Image.network(
            "${AppUrl.productsImg}/${productImage}",
          ),
        ),
        Image.network(
          "${AppUrl.productsImg}/${productImage}",
        ),
        Image.network(
          "${AppUrl.productsImg}/${productImage}",
        ),
      ],
    );
  }
}
