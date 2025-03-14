import 'package:flutter/material.dart';

class CostumLine extends StatelessWidget {
  const CostumLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(30)),
    );
  }
}
