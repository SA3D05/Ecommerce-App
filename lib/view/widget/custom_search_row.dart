import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomSearchRow extends StatelessWidget {
  const CustomSearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade300,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.light,
          ),
        )
      ],
    );
  }
}
