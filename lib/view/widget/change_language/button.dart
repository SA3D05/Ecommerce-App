import 'package:ecommerceapp/core/constant/font.dart';
import 'package:flutter/material.dart';

class CustomButtonChangeLanguage extends StatelessWidget {
  final void Function()? onPressed;
  final String textButton;
  const CustomButtonChangeLanguage(
      {super.key, this.onPressed, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.pink.shade400),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 100),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          textButton,
          style: const TextStyle(
              height: 1.2,
              fontFamily: 'ElMessiri',
              fontWeight:
                  AppFont.medium, // يمكنك تجربة FontWeight.w400 أو w700 وهكذا
              fontSize: 16,
              color: Colors.white),
        ));
  }
}
