import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class ResetPasswordData {
  Crud crud;

  ResetPasswordData(this.crud);
  getData(
    String email,
    String password,
  ) async {
    var response = await crud
        .postData(AppUrl.reserPassword, {"email": email, "password": password});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
