import 'package:ecommerceapp/controller/auth/forgot_password_controllers/success_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessControllerImpl controller = Get.put(SuccessControllerImpl());
    return Scaffold(
      appBar: AppBar(
        title: Text("Success"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Scaffold().backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 235, 232, 232),
          ),
          child: ListView(
            shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_outline_rounded,
                size: 100,
                color: AppColor.primary,
                shadows: [
                  Shadow(
                    offset: Offset(1, 3),
                    color: AppColor.primary,
                    blurRadius: 11,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Success! 🎉",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Your account is now ready to use. You can login and enjoy all the features.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButtonAuth(
                  onPressed: () {
                    controller.goToLogin();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
