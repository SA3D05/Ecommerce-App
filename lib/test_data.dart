// import 'package:ecommerceapp/controller/test_data_controller.dart';
// import 'package:ecommerceapp/core/constant/color.dart';
// import 'package:ecommerceapp/core/widget/handling_data_view.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class TestData extends StatelessWidget {
//   const TestData({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(TestDataController());
//     return Scaffold(
//       body: GetBuilder<TestDataController>(builder: (controller) {
//         return HandlingDataView(
//           statusRequest: controller.statusRequest,
//           widget: ListView.builder(
//               itemCount: controller.data.length,
//               itemBuilder: (context, index) {
//                 return Column(
//                   children: [
//                     Card(
//                       child: ListTile(
//                         title: Text("${controller.data[index]['user_name']}"),
//                       ),
//                     ),
//                     Card(
//                       child: ListTile(
//                         title: Text("${controller.data[index]['user_email']}"),
//                       ),
//                     ),
//                     Card(
//                       child: ListTile(
//                         title: Text("${controller.data[index]['user_phone']}"),
//                       ),
//                     ),
//                   ],
//                 );
//               }),
//         );
//       }),
//     );
//   }
// }
