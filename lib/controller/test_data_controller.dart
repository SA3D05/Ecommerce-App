import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/static/remot/test_data.dart';
import 'package:get/get.dart';

class TestDataController extends GetxController {
  TestData testData = TestData(Get.find<Crud>());

  List data = [];
  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = testData.getData();

    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
