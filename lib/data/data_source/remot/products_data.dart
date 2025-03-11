import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class ProductsData {
  Crud crud;

  ProductsData(this.crud);
  getData() async {
    var response = await crud.postData(AppUrl.products, {});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
