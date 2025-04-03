import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/url_api.dart';

class FavoriteData {
  Crud crud;

  FavoriteData(this.crud);
  getData(int userId, int productId) async {
    var response = await crud.postData(AppUrl.addFavorite, {
      "user_id": userId.toString(),
      "product_id": productId.toString(),
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
