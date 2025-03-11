import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class CheckEmailData {
  Crud crud;

  CheckEmailData(this.crud);
  getData(
    String email,
  ) async {
    var response = await crud.postData(AppUrl.checkEmail, {"email": email});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
