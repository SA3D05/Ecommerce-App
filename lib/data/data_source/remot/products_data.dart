import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class ProductsData {
  Crud crud;

  ProductsData(this.crud);
  getData(int categorie) async {
    var response = await crud
        .postData(AppUrl.products, {"categorie": categorie.toString()});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
