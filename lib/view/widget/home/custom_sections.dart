import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSectionsHome extends StatelessWidget {
  final String title;
  const CustomSectionsHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "view_all".tr,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
