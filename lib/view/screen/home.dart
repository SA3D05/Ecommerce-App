import 'package:ecommerceapp/controller/home_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
        backgroundColor: const Color(0xfff8f8f8),
        appBar: AppBar(
          backgroundColor: const Color(0xfff8f8f8),
          title: const Text("Home"),
          centerTitle: true,
          leading: const CircleAvatar(
            child: Icon(Icons.apps_sharp),
          ),
          actions: [
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
                minRadius: 15,
                backgroundColor: Colors.white,
                // maxRadius: 50,
                child: Icon(
                  Icons.shopping_basket_rounded,
                  color: Colors.grey,
                  size: 20,
                )),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
                child: IconButton(
              onPressed: () {
                print("WA3");
              },
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
            )),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              Row(
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
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade300,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        height: 10,
                        width: 20,
                        decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
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
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
