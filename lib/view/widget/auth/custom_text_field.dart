import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData? icon;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.icon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      // onFieldSubmitted: validator,
      cursorHeight: 25,
      cursorColor: AppColor.gray,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: InputDecoration(
        errorStyle: TextStyle(fontSize: 14),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 5,
        ),
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(labelText),
        ),
        labelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey,
            ),
        suffixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: AppColor.gray,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.red, width: 2),
        ),
      ),
    );
  }
}
