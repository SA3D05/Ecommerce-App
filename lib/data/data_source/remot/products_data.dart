import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class ProductsData {
  Crud crud;

  ProductsData(this.crud);
  getData(int categorie, int userId) async {
    var response = await crud.postData(AppUrl.products, {
      "categorie": categorie.toString(),
      "user_id": userId.toString(),
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
