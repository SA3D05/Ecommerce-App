import 'package:ecommerceapp/controller/product_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuantitySelectorDetails extends StatelessWidget {
  const QuantitySelectorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailsController>(
      builder: (controller) => Row(
        children: [
          const Text("Quantity"),
          const SizedBox(
            width: 15,
          ),
          Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => controller.addCount(),
                  icon: const Icon(Icons.add),
                ),
                Text("${controller.count}"),
                IconButton(
                  onPressed: () => controller.removeCount(),
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
