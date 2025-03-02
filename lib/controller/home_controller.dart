import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/data_source/static/remot/home_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  AppServices appServices = Get.find<AppServices>();
  // PageController pageController;
  String? username;
  List categories = [];
  List products = [];
  int currentIndex = 1;
  List banners = ["assets/banner_1.png", "assets/banner_2.png"];

  initialData() {
    username = appServices.sharedPreferences.getString("username");
  }

  StatusRequest statusRequest = StatusRequest.none;
  HomeData homeData = HomeData(Get.find<Crud>());

  getData() async {
    var response = await homeData.getData();
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      categories.addAll(response['categories']);
      products.addAll(response['products']);
    } else {
      statusRequest = StatusRequest.failure;
    }
  }

  Future getFCMToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    print("====================== FCM Token: $token ======================");
  }

  @override
  void onInit() {
    getData();
    initialData();

    super.onInit();
  }
}
