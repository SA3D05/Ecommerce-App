import 'package:ecommerceapp/controller/auth/sign_up_controllers/sign_up_controller.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/functions/input_validator.dart';
import 'package:ecommerceapp/view/widget/auth/bottom_message.dart';
import 'package:ecommerceapp/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerceapp/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpConrollerImpl());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: GetBuilder<SignUpConrollerImpl>(
        builder: (controller) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
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
                  const SizedBox(
                    width: double.infinity,
                  ),
                  // SizedBox(height: 100, child: Image.asset(AppImageAsset.logo)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Sign un with your email and password or continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  // ========================================================  USERNAME FIELD
                  CustomTextField(
                    controller: controller.username,
                    hintText: "Enter your username",
                    labelText: "Username",
                    icon: const Icon(Icons.person),
                    validator: (val) => validInput(val, "username", 5, 20),
                  ),
                  const SizedBox(height: 30),
                  // ========================================================  EMAIL FIELD
                  CustomTextField(
                      controller: controller.email,
                      hintText: "Enter your email",
                      labelText: "Email",
                      icon: const Icon(Icons.email_outlined),
                      validator: (val) => validInput(val, "email", 10, 100)),

                  const SizedBox(height: 30),
                  // ========================================================  PHONE FIELD
                  CustomTextField(
                      controller: controller.phone,
                      hintText: "Enter your phone",
                      isDigit: true,
                      labelText: "Phone",
                      icon: const Icon(Icons.phone),
                      validator: (val) => validInput(val, "phone", 10, 10)),

                  const SizedBox(height: 30),
                  // ========================================================  PASSWORD FIELD
                  GetBuilder<SignUpConrollerImpl>(
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
                      validator: (val) => validInput(val, "password", 8, 30),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // ========================================================  SUBMIT BUTTON
                  GetBuilder<SignUpConrollerImpl>(
                    builder: (controllerButton) => SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: CustomButtonAuth(
                          content: controllerButton.statusRequest ==
                                  StatusRequest.loading
                              ? const CircularProgressIndicator(
                                  color: AppColor.light,
                                )
                              : const Text("Sign Up",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24)),
                          onPressed: () => controllerButton.signUp(),
                        )),
                  ),
                  const SizedBox(height: 10),
                  // ========================================================  GO TO LOGIN SCREEN
                  BottomMessageAuth(
                    message: 'Alrady have an account?',
                    goToPageText: "Login",
                    onPressed: () {
                      controller.goToLogin();
                    },
                  ),
                  // ========================================================  END
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
