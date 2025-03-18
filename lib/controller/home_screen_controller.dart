import 'package:ecommerceapp/view/screen/favorites.dart';
import 'package:ecommerceapp/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  int currentPage = 0;

  List<Widget> pages = [
    const Home(),
    const Favorites(),
    const Center(
      child: Text("Settings"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  List pagesIcons = [
    Icons.home,
    Icons.favorite,
    Icons.settings,
    Icons.person,
  ];

  changePage(int newCurrentPage) {
    currentPage = newCurrentPage;
    update();
  }
}
