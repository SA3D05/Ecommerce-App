import 'package:ecommerceapp/controller/auth/forgot_password_controllers/reset_password_controller.dart';
import 'package:ecommerceapp/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerceapp/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl controller =
        Get.put(ResetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Scaffold().backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 235, 232, 232),
          ),
          child: ListView(
            shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Reset Your Password 🔒",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Enter a new password for your account. Make sure it's strong and secure",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              CustomTextField(
                controller: controller.password,
                labelText: "New password",
                hintText: "Enter the new password",
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                controller: controller.rePassword,
                labelText: "New password",
                hintText: "Re enter the new password",
              ),
              const SizedBox(height: 30),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButtonAuth(
                    onPressed: () {
                      controller.goToSuccess();
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
