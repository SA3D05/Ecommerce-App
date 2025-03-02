import 'package:flutter/material.dart';

class CustomAppbarHome extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Home',
        style: TextStyle(
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
        const Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: CircleAvatar(
            child: Icon(Icons.person), // ضع صورتك هنا
          ),
        ),
      ],
    );
  }
}
