import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class LoginData {
  Crud crud;

  LoginData(this.crud);
  getData(
    String email,
    String password,
  ) async {
    var response = await crud.postData(AppUrl.login, {
      "email": email,
      "password": password,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
