import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/animations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppAnimationsAssets.loading),
          )
        : statusRequest == StatusRequest.noInternet
            ? Center(
                child: Lottie.asset(AppAnimationsAssets.noInternet),
              )
            : statusRequest == StatusRequest.serverFailure
                ? Center(
                    child: Lottie.asset(AppAnimationsAssets.serverError),
                  )
                : widget;
  }
}
