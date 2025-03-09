import 'package:flutter/material.dart';

class CustomIconsNavBar extends StatelessWidget {
  final void Function()? onPress;
  final pageIcon;
  final currentPage;

  final IconData icon;
  const CustomIconsNavBar(
      {super.key,
      this.onPress,
      required this.icon,
      this.pageIcon,
      this.currentPage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        // hoverColor: Colors.transparent,
        onTap: onPress,
        child: Icon(
          icon,
          color: currentPage == pageIcon ? Colors.white : Colors.black,
        ));
  }
}
