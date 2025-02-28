import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/data_source/static/remot/home_data.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  AppServices appServices = Get.find<AppServices>();
  String? username;

  List categories = [];

  initialData() {
    username = appServices.sharedPreferences.getString("email");
  }

  StatusRequest statusRequest = StatusRequest.none;
  HomeData homeData = HomeData(Get.find<Crud>());

  getData() async {
    var response = await homeData.getData();
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      categories.addAll(response['categories']);
    } else {
      statusRequest = StatusRequest.failure;
    }
  }

  @override
  void onInit() {
    getData();
    initialData();

    super.onInit();
  }
}
