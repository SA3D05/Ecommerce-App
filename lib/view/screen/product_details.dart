import 'package:ecommerceapp/url_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "1",
              child: Image.network(
                "${AppUrl.productsImg}/samsung.png",
                height: screenHeight / 2,
              ),
            ), // تأكد من وجود الصورة في مجلد assets
            Container(
              height: screenHeight / 2,
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
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Puma Max',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$100.00',
                            style: TextStyle(fontSize: 20, color: Colors.green),
                          ),
                        ]),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'By Puma',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              Text('4.3', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Size',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 60,
                          width: 200,
                          child: ListView(
                            // shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              const SizeButton(size: 'US 6'),
                              const SizeButton(size: 'US 7'),
                              const SizeButton(size: 'US 8'),
                              const SizeButton(size: 'US 9'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Color',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 60,
                          width: 200,
                          child: ListView(
                            // shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              const SizeButton(size: 'Red'),
                              const SizeButton(size: 'Red'),
                              const SizeButton(size: 'Red'),
                              const SizeButton(size: 'Red'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Description',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Sometimes fashion just looks fast. These sci-fi inspired trainers are bold and colourful because their no retro design notes optimistically point to better ahead...',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SizeButton extends StatelessWidget {
  final String size;

  const SizeButton({required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(size),
      ),
    );
  }
}
