import 'package:ecommerceapp/controller/auth/login_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/constant/image_asset.dart';
import 'package:ecommerceapp/core/functions/input_validator.dart';
import 'package:ecommerceapp/core/widget/exit_app.dart';
import 'package:ecommerceapp/core/widget/handling_data_request.dart';
import 'package:ecommerceapp/view/widget/auth/bottom_message.dart';
import 'package:ecommerceapp/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerceapp/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginConroller());
    return ExitApp(
      child: Scaffold(
        appBar: AppBar(
          title: Text("login".tr),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: const Scaffold().backgroundColor,
        ),
        body: GetBuilder<LoginConroller>(
            builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 10),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 235, 232, 232),
                      ),
                      child: Form(
                        key: controller.formState,
                        child: ListView(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 100,
                                child: Image.asset(AppImageAsset.logo)),
                            const Text(
                              "Welcome Back",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "sign_in_with_email".tr,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            // here
                            CustomTextField(
                                controller: controller.email,
                                hintText: "Enter your email",
                                labelText: "Email",
                                icon: const Icon(Icons.email_outlined),

                                // onFieldSubmitted: ,

                                validator: (val) =>
                                    validInput(val, "email", 10, 100)),
                            const SizedBox(height: 30),

                            // ========================================================  PASSWORD FIELD
                            GetBuilder<LoginConroller>(
                              builder: (controller) => CustomTextField(
                                controller: controller.password,
                                scureText: controller.isHide,
                                hintText: "Enter your password",
                                labelText: "Password",
                                icon: IconButton(
                                    onPressed: () {
                                      controller.hideField();
                                    },
                                    icon: Icon(controller.isHide
                                        ? Icons.remove_red_eye_rounded
                                        : Icons.remove_red_eye_outlined)),
                                validator: (val) =>
                                    validInput(val, "password", 8, 30),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                        value: false, onChanged: (value) {}),
                                    Text("remember_me".tr),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    controller.goToForgotPassword();
                                  },
                                  child: Text(
                                    "forgot_password".tr,
                                    style: const TextStyle(
                                        color: AppColor.primary),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: CustomButtonAuth(
                                  onPressed: () => controller.login(),
                                )),

                            const SizedBox(height: 10),
                            BottomMessageAuth(
                              message: "dont_have_an_account".tr,
                              goToPageText: "sign_up".tr,
                              onPressed: () {
                                controller.goToSignUp();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
