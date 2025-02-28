class CategoriesModle {
  int? categorieId;
  String? categorieNameEn;
  String? categorieNameAr;
  String? categorieImage;
  String? categorieDateTime;

  CategoriesModle(
      {this.categorieId,
      this.categorieNameEn,
      this.categorieNameAr,
      this.categorieImage,
      this.categorieDateTime});

  CategoriesModle.fromJson(Map<String, dynamic> json) {
    categorieId = json['categorie_id'];
    categorieNameEn = json['categorie_name_en'];
    categorieNameAr = json['categorie_name_ar'];
    categorieImage = json['categorie_image'];
    categorieDateTime = json['categorie_date_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categorie_id'] = this.categorieId;
    data['categorie_name_en'] = this.categorieNameEn;
    data['categorie_name_ar'] = this.categorieNameAr;
    data['categorie_image'] = this.categorieImage;
    data['categorie_date_time'] = this.categorieDateTime;
    return data;
  }
}
