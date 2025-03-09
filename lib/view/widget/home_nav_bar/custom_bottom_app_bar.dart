import 'package:ecommerceapp/controller/home_screen_controller.dart';
import 'package:ecommerceapp/view/widget/home_nav_bar/custom_icons_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (controller) => BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        height: 50,
        color: Colors.amber,
        // 080561
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(controller.pages.length + 1, (index) {
              int i = index > 2 ? index - 1 : index;
              return index == 2
                  ? const Icon(
                      Icons
                          .shopping_basket_rounded // just sumthing to fill ander the [FloatingActionButton]
                      ,
                      color: Colors.transparent,
                    )
                  : CustomIconsNavBar(
                      icon: controller.pagesIcons[i],
                      onPress: () => controller.changePage(i),
                      pageIcon: i,
                      currentPage: controller.currentPage,
                    );
            }),
          ],
        ),
      ),
    );
  }
}
