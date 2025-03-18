import 'package:ecommerceapp/data/model/product_modle.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  late ProductModle productModle;
  int count = 1;

  addCount() {
    if (count < productModle.productCount!) {
      count++;
      update();
    }
  }

  removeCount() {
    if (count > 1) {
      count--;

      update();
    }
  }

  @override
  void onInit() {
    productModle = Get.arguments['product'];
    super.onInit();
  }
}
