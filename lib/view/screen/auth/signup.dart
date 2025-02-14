import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/constant/image_asset.dart';
import 'package:ecommerceapp/view/widget/auth/bottom_message.dart';
import 'package:ecommerceapp/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerceapp/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            SizedBox(height: 100, child: Image.asset(AppImageAsset.logo)),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Sign un with your email and password or continue with social media",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            // here
            CustomTextField(
              controller: TextEditingController(),
              hintText: "Enter your email",
              labelText: "Email",
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 30),
            CustomTextField(
              controller: TextEditingController(),
              hintText: "Enter your password",
              labelText: "Password",
              icon: Icons.lock_outline_rounded,
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
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: AppColor.primary),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
                width: double.infinity, height: 50, child: CustomButtonAuth()),
            const SizedBox(height: 24),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       icon: Image.asset("assets/google.png"),
            //       onPressed: () {},
            //     ),
            //     IconButton(
            //       icon: Image.asset("assets/facebook.png"),
            //       onPressed: () {},
            //     ),
            //     IconButton(
            //       icon: Image.asset("assets/twitter.png"),
            //       onPressed: () {},
            //     ),
            //   ],
            // ),
            const SizedBox(height: 16),
            BottomMessageAuth(
              message: 'Alrady have an account?',
              goToPageText: "Login",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
