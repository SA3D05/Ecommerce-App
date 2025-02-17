import 'package:ecommerceapp/binding.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/constant/font.dart';
// import 'package:ecommerceapp/core/localization/change_local.dart';
import 'package:ecommerceapp/core/localization/translation.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/routes.dart';
import 'package:ecommerceapp/view/screen/auth/login.dart';
// import 'package:ecommerceapp/view/screen/change_language.dart';
// import 'package:ecommerceapp/view/screen/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: Locale("en"),

      //  controller.language,

      translations: AppTranslation(),
      routes: routes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColor.primary,
        primaryColorLight: AppColor.light,
        fontFamily: "ElMessiri",
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'ElMessiri',
            fontWeight:
                AppFont.bold, // يمكنك تجربة FontWeight.w400 أو w700 وهكذا
            fontSize: 32,
          ),
          bodySmall: TextStyle(
            height: 1.2,
            fontFamily: 'ElMessiri',
            fontWeight:
                AppFont.medium, // يمكنك تجربة FontWeight.w400 أو w700 وهكذا
            fontSize: 16,
          ),
        ),
      ),
      initialBinding: AppBinding(),
      home: Login(),
    );
  }
}
