import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class VerifyCodeSignUpData {
  Crud crud;

  VerifyCodeSignUpData(this.crud);
  getData(
    String email,
    String verifyCode,
  ) async {
    var response = await crud.postData(AppUrl.verifyCode, {
      "email": email,
      "verify_code": verifyCode,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
