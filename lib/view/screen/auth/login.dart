import 'package:ecommerceapp/controller/auth/login_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/constant/image_asset.dart';
import 'package:ecommerceapp/core/functions/input_validator.dart';
import 'package:ecommerceapp/view/widget/auth/bottom_message.dart';
import 'package:ecommerceapp/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerceapp/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginConrollerImpl controller = Get.put(LoginConrollerImpl());
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Scaffold().backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
        child: Container(
          padding: EdgeInsets.all(10),
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
                SizedBox(height: 100, child: Image.asset(AppImageAsset.logo)),
                const Text(
                  "Welcome Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
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
                    icon: Icons.email_outlined,
                    // onFieldSubmitted: ,

                    validator: (val) => validInput(val, "email", 10, 100)),
                const SizedBox(height: 30),
                CustomTextField(
                  controller: controller.password,
                  hintText: "Enter your password",
                  labelText: "Password",
                  icon: Icons.lock_outline_rounded,
                  validator: (val) => validInput(val, "password", 8, 30),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text("Remember me"),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        controller.goToForgotPassword();
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: AppColor.primary),
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
                  message: 'Don\'t have an account?',
                  goToPageText: "Sign Up",
                  onPressed: () {
                    controller.goToSignUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
