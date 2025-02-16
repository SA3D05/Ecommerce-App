import 'package:ecommerceapp/controller/auth/forgot_password/verify_email_code_controller.dart';
import 'package:ecommerceapp/view/widget/auth/check_email_otg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailCode extends StatelessWidget {
  const VerifyEmailCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyEmailCodeController controller =
        Get.put(VerifyEmailCodeControllerImpl());
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify Email Code"),
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
              const Text(
                "Check Email",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "ajshvfsda fisdhlal jfhasdjk fsdkj fhsda;sldjf",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              CheckEmailOtg(
                onSubmit: (String code) {
                  controller.goToResetPassword();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
