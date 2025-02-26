import 'package:ecommerceapp/controller/add_server_controller.dart';
import 'package:ecommerceapp/core/widget/handling_data_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddServer extends StatelessWidget {
  const AddServer({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddServerController());
    return Scaffold(
        body: GetBuilder<AddServerController>(
      builder: (controller) => HandlingDataRequest(
        statusRequest: controller.statusRequest,
        widget: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextField(
                  controller: controller.serverUrl,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.checkServer();
                  },
                  child: const Text("TEST SERVER"))
            ],
          ),
        ),
      ),
    ));
  }
}
