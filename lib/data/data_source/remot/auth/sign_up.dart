import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class SignUpData {
  Crud crud;

  SignUpData(this.crud);
  getData(
    String username,
    String email,
    String phone,
    String password,
  ) async {
    var response = await crud.postData(AppUrl.signUp, {
      "username": username,
      "email": email,
      "phone": phone,
      "password": password,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
