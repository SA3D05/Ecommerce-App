class ProductsModle {
  int? productId;
  String? productNameEn;
  String? productNameAr;
  String? productDescriptionEn;
  String? productDescriptionAr;
  String? productImage;
  int? productCount;
  int? productActive;
  int? productPrice;
  int? productDiscount;
  String? productDate;
  int? productCategorie;

  ProductsModle(
      {this.productId,
      this.productNameEn,
      this.productNameAr,
      this.productDescriptionEn,
      this.productDescriptionAr,
      this.productImage,
      this.productCount,
      this.productActive,
      this.productPrice,
      this.productDiscount,
      this.productDate,
      this.productCategorie});

  ProductsModle.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productNameEn = json['product_name_en'];
    productNameAr = json['product_name_ar'];
    productDescriptionEn = json['product_description_en'];
    productDescriptionAr = json['product_description_ar'];
    productImage = json['product_image'];
    productCount = json['product_count'];
    productActive = json['product_active'];
    productPrice = json['product_price'];
    productDiscount = json['product_discount'];
    productDate = json['product_date'];
    productCategorie = json['product_categorie'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_name_en'] = this.productNameEn;
    data['product_name_ar'] = this.productNameAr;
    data['product_description_en'] = this.productDescriptionEn;
    data['product_description_ar'] = this.productDescriptionAr;
    data['product_image'] = this.productImage;
    data['product_count'] = this.productCount;
    data['product_active'] = this.productActive;
    data['product_price'] = this.productPrice;
    data['product_discount'] = this.productDiscount;
    data['product_date'] = this.productDate;
    data['product_categorie'] = this.productCategorie;
    return data;
  }
}
