import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbarHome extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onPressed;

  const CustomAppbarHome({super.key, this.onPressed});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "home".tr,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CircleAvatar(
          backgroundColor: Colors.red.shade100,
          child: const Icon(Icons.grid_view, color: Colors.red),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: const Icon(Icons.shopping_bag_outlined,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: CircleAvatar(
            child: IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.person)), // ضع صورتك هنا
          ),
        ),
      ],
    );
  }
}
