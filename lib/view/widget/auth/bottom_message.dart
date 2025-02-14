import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class BottomMessageAuth extends StatelessWidget {
  final String message;
  final String goToPageText;
  final void Function()? onPressed;

  const BottomMessageAuth(
      {super.key,
      required this.message,
      required this.goToPageText,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(message),
        TextButton(
          onPressed: onPressed,
          child: Text(goToPageText, style: TextStyle(color: AppColor.primary)),
        ),
      ],
    );
  }
}
