import 'package:ecommerceapp/controller/auth/sign_up_controller.dart';
import 'package:ecommerceapp/view/widget/auth/bottom_message.dart';
import 'package:ecommerceapp/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerceapp/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    SignUpConrollerImpl controller = Get.put(SignUpConrollerImpl());
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 235, 232, 232),
          ),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
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
              CustomTextField(
                controller: controller.username,
                hintText: "Enter your username",
                labelText: "Username",
                icon: Icons.person,
              ),
              const SizedBox(height: 30),
              CustomTextField(
                controller: controller.email,
                hintText: "Enter your email",
                labelText: "Email",
                icon: Icons.email_outlined,
              ),

              const SizedBox(height: 30),
              CustomTextField(
                controller: controller.password,
                hintText: "Enter your password",
                labelText: "Password",
                icon: Icons.lock_outline_rounded,
              ),
              const SizedBox(height: 30),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButtonAuth(
                    onPressed: () => controller.goToSuccess(),
                  )),
              const SizedBox(height: 10),
              BottomMessageAuth(
                message: 'Alrady have an account?',
                goToPageText: "Login",
                onPressed: () {
                  controller.goToLogin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
