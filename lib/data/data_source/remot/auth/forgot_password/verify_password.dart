import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class VerifyCodeData {
  Crud crud;

  VerifyCodeData(this.crud);
  getData(
    String email,
    String code,
  ) async {
    var response = await crud.postData(AppUrl.verifyCodeForgotPassword, {
      "email": email,
      "verify_code": code,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
