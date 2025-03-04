import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/static/remot/home_data.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // AppServices appServices = Get.find<AppServices>();
  // PageController pageController;
  // String? username;
  List categories = [];
  List products = [];
  int currentIndex = 0;
  List banners = ["assets/banners/banner_1.png", "assets/banners/banner_2.png"];

  StatusRequest statusRequest = StatusRequest.none;
  HomeData homeData = HomeData(Get.find<Crud>());

  // initialData() {
  //   username = appServices.sharedPreferences.getString("username");
  // }

  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      categories.addAll(response['categories']);
      products.addAll(response['products']);
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  // Future getFCMToken() async {
  //   String? token = await FirebaseMessaging.instance.getToken();
  //   print("====================== FCM Token: $token ======================");
  // }

  @override
  void onInit() async {
    await getData();
    // initialData();

    super.onInit();
  }
}
