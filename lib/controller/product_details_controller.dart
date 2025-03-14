import 'package:ecommerceapp/data/model/product_modle.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  late ProductModle productModle;

  addCount(int oldCount) {
if    (oldCount < productModle.productCount ){
    oldCount++;
    update();}
  }
  removeCount(int oldCount) {
    if (oldCount > 1 ){

    oldCount--;
    
    update();
    }
  }

  @override
  void onInit() {
    productModle = Get.arguments['product'];
    super.onInit();
  }
}
