import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final String color;

  int get getColor => int.parse("0XFF" + color);

  const ColorButton({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Color(getColor)
            // borderRadius: BorderRadius.circular(8),
            ),
      ),
    );
  }
}
