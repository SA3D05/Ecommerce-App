import 'package:ecommerceapp/controller/home_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/url_api.dart';
import 'package:ecommerceapp/view/widget/home/custom_appbar.dart';
import 'package:ecommerceapp/view/widget/home/custom_banner.dart';
import 'package:ecommerceapp/view/widget/home/custom_search_row.dart';
import 'package:ecommerceapp/view/widget/home/dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
        backgroundColor: const Color(0xfff8f8f8),
        appBar: CustomAppbarHome(),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              const CustomSearchRowHome(),
              const SizedBox(
                height: 20,
              ),
              const CustomBannerHome(),
              const SizedBox(
                height: 10,
              ),
              const DotsHome(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.categories.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                              child: SvgPicture.network(
                                "${AppUrl.categories}/${controller.categories[index]['categorie_image']}",
                              ),
                            ),
                          ),
                          Text(
                            "${controller.categories[index]['categorie_name_en']}",
                          )
                        ],
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // عدد الأعمدة
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                      child: Image.network(
                          "${AppUrl.products}/${controller.products[index]['product_image']}"),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
