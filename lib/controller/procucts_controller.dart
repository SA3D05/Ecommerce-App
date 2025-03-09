import 'package:get/get.dart';

class ProductsController extends GetxController {
  List categories = [];
  int selectedCat = 0;

  @override
  void onInit() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedCat'];
    super.onInit();
  }

  changeSelectedCat(int newSelectedCat) {
    selectedCat = newSelectedCat;
    update();
  }
}
