import 'package:ecommerceapp/controller/product_details_controller.dart';
import 'package:ecommerceapp/core/functions/get_screen_info.dart';
import 'package:ecommerceapp/core/functions/translate_db.dart';
import 'package:ecommerceapp/data/model/product_modle.dart';
import 'package:ecommerceapp/view/widget/products/product_details.dart/color_picker.dart';
import 'package:ecommerceapp/view/widget/products/product_details.dart/costum_line.dart';
import 'package:ecommerceapp/view/widget/products/product_details.dart/description.dart';
import 'package:ecommerceapp/view/widget/products/product_details.dart/product_images_scroll.dart';
import 'package:ecommerceapp/view/widget/products/product_details.dart/quantity_selector.dart';
import 'package:ecommerceapp/view/widget/products/product_details.dart/title_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductDetailsController controller = Get.put(ProductDetailsController());
    ProductModle product = controller.productModle;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: getScreenHeight(context) / 2.5,
                child: ProductImagesScroll(
                  productId: product.productId!,
                  productImage: product.productImage!,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),

                  // padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleDetails(
                        title: translateDb(
                            product.productNameAr!, product.productNameEn!),
                        price: product.productPrice!,
                      ),
                      const CostumLine(),
                      const SizedBox(
                        height: 10,
                      ),
                      const ColorPickerDetails(),
                      const SizedBox(
                        height: 10,
                      ),
                      const QuantitySelectorDetails(),
                      const CostumLine(),
                      DescriptionDetails(
                        description: translateDb(product.productDescriptionAr!,
                            product.productDescriptionEn!),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
