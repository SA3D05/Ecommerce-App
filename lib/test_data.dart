import 'package:ecommerceapp/controller/test_data_controller.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestData extends StatelessWidget {
  const TestData({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestDataController());
    return Scaffold(
      body: GetBuilder<TestDataController>(
        builder: (controller) {
          switch (controller.statusRequest) {
            case StatusRequest.loading:
              const Center(
                child: CircularProgressIndicator(),
              );

              break;
            case StatusRequest.success:
              ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) => Text("${controller.data}"),
              );
            case StatusRequest.nointernet:
              const Center(
                child: Text("NO INTERNET"),
              );
            default:
              const Center(
                child: Text("NO DATA"),
              );
          }
          return const Center(
            child: Text("NO DATA"),
          );
        },
      ),
    );
  }
}
