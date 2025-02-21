import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class TestData {
  Crud crud;

  TestData(this.crud);
  getData() async {
    var response = await crud.postData(AppUrl.testUrl, {});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
