import 'package:ecommerceapp/controller/auth/forgot_password_controllers/verify_email_forgot_pass_controller.dart';
import 'package:ecommerceapp/core/widget/handling_data_request.dart';
import 'package:ecommerceapp/view/widget/auth/check_email_otg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailForgotPassword extends StatelessWidget {
  const VerifyEmailForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyEmailForgotPasswordController());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Check Your Email"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: const Scaffold().backgroundColor,
        ),
        body: GetBuilder<VerifyEmailForgotPasswordController>(
            builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 10),
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
                            "Enter the Verification Code 🔐",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "We've sent a 6-digit verification code to your email. Please enter the code below to verify your account.",
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          CheckEmailOtg(
                            onSubmit: (String code) {
                              controller.checkCode(code);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )));
  }
}
