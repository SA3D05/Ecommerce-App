import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/functions/handling_data.dart';
import 'package:ecommerceapp/data/data_source/remot/products_data.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  List categories = [];
  List products = [];
  int selectedCat = 0;
  int categorieId = 0;

  StatusRequest statusRequest = StatusRequest.none;
  ProductsData productsData = ProductsData(Get.find<Crud>());

  getData(int cat) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await productsData.getData(cat);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      products.clear();
      products.addAll(response['data']);
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  changeSelectedCat(int newSelectedCat, int newCategorieId) {
    selectedCat = newSelectedCat;
    categorieId = newCategorieId;
    getData(categorieId);
  }

  goToProductDetails(String product) {
    Get.toNamed(AppRoute.productDetails, arguments: {
      "product": product,
    });
  }

  @override
  void onInit() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedCat'];
    categorieId = Get.arguments['categorieId'];
    getData(categorieId);
    super.onInit();
  }
}
