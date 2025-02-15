import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed;
  const CustomButtonAuth({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: onPressed,
      child: const Text("Continue",
          style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}
