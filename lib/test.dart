// import 'package:ecommerceapp/core/class/status_request.dart';
// import 'package:ecommerceapp/core/class/crud.dart';
// import 'package:ecommerceapp/url_api.dart';
// import 'package:flutter/material.dart';

// class Testor extends StatefulWidget {
//   const Testor({super.key});

//   @override
//   State<Testor> createState() => _TestorState();
// }

// class _TestorState extends State<Testor> with Crud {
//   bool isLoading = false;
//   dynamic check;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             isLoading
//                 ? const CircularProgressIndicator()
//                 : Text("${check ?? "Press the button to check internet"}"),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 print("pip");
//                 testInternet();
//               },
//               child: const Text("Check Internet"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
