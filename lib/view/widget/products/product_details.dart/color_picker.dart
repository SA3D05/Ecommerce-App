import 'package:ecommerceapp/view/widget/products/product_details.dart/color_button.dart';
import 'package:flutter/material.dart';

class ColorPickerDetails extends StatelessWidget {
  const ColorPickerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.s,
          children: [
            const SizedBox(height: 8),
            Expanded(
              child: SizedBox(
                height: 60,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...List.generate(
                        8,
                        (index) => const ColorButton(
                              color: "7a5647",
                            ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
