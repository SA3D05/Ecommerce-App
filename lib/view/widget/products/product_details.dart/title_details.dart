import 'package:ecommerceapp/core/constant/font.dart';
import 'package:flutter/material.dart';

class ProductTitleDetails extends StatelessWidget {
  final String title;
  final int price;

  const ProductTitleDetails(
      {super.key, required this.title, required this.price});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            Text(
              '\$$price',
              style: const TextStyle(
                  fontSize: 30, color: Colors.green, fontWeight: AppFont.bold),
            ),
            const Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text('4.3', style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),
      ]),
    ]);
  }
}
