import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomSearchRow extends StatelessWidget {
  const CustomSearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.light,
              ),
              child: TextFormField(
                cursorHeight: 30,
                cursorColor: Colors.grey,
                decoration: const InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.filter_list),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
