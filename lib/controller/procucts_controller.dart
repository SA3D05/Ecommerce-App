import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/remot/products_data.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  List categories = [];
  List products = [];
  int selectedCat = 0;
  StatusRequest statusRequest = StatusRequest.none;
  ProductsData productsData = ProductsData(Get.find<Crud>());

  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await productsData.getData();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      products.addAll(response['data']);
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  void onInit() {
    getData();
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedCat'];
    super.onInit();
  }

  changeSelectedCat(int newSelectedCat) {
    selectedCat = newSelectedCat;
    update();
  }
}
