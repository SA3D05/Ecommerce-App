import 'package:ecommerceapp/controller/auth/forgot_password_controllers/forgot_password_controller.dart';
import 'package:ecommerceapp/core/functions/input_validator.dart';
import 'package:ecommerceapp/core/widget/handling_data_request.dart';
import 'package:ecommerceapp/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerceapp/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgotPasswordController());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Forgot Password"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: const Scaffold().backgroundColor,
        ),
        body: GetBuilder<ForgotPasswordController>(
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
                      child: Form(
                        key: controller.formState,
                        child: ListView(
                          shrinkWrap: true,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Check Email",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Sign in with your email and password or continue with social media",
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                            // here
                            CustomTextField(
                              controller: controller.email,
                              hintText: "Enter your email",
                              labelText: "Email",
                              icon: const Icon(Icons.email_outlined),
                              validator: (val) =>
                                  validInput(val, "email", 10, 100),
                            ),

                            const SizedBox(height: 30),
                            SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: CustomButtonAuth(
                                  onPressed: () {
                                    controller.checkEmail();
                                  },
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                )));
  }
}
