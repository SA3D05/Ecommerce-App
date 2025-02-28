import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);
  getData() async {
    var response = await crud.postData(AppUrl.home, {});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
