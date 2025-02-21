import 'package:ecommerceapp/binding.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/constant/font.dart';
import 'package:ecommerceapp/core/localization/translation.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/routes.dart';
import 'package:ecommerceapp/test.dart';
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
    AppServices appServices = Get.find<AppServices>();
    // LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const Testor(),
      // setup app language
      locale: Locale(appServices.sharedPreferences.getString("lang") ??
          Get.deviceLocale!.languageCode),
      translations: AppTranslation(),
      // routes
      getPages: routes,
      initialRoute: "/",

      initialBinding: AppBinding(),
      title: 'Flutter Demo',

      theme: ThemeData(
        primaryColor: AppColor.primary,
        primaryColorLight: AppColor.light,
        fontFamily: "ElMessiri",
        textTheme: const TextTheme(
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
    );
  }
}
