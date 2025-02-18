import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExitApp extends StatefulWidget {
  final Widget child;
  const ExitApp({super.key, required this.child});

  @override
  State<ExitApp> createState() => _ExitAppState();
}

class _ExitAppState extends State<ExitApp> {
  DateTime? lastPressed;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            return;
          }

          DateTime now = DateTime.now();
          if (lastPressed == null ||
              now.difference(lastPressed!) > Duration(seconds: 2)) {
            lastPressed = now;
            Fluttertoast.showToast(msg: "Press again to exit");
          }
          // exit
          else {
            exit(0);
          }
        },
        child: widget.child);
  }
}
