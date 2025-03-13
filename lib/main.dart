import 'package:ecommerceapp/binding.dart';
import 'package:device_preview/device_preview.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/constant/font.dart';
import 'package:ecommerceapp/core/localization/translation.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppServices appServices = Get.find<AppServices>();
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      // home: const TestData(),
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
            fontWeight: AppFont.bold,
            fontSize: 32,
          ),
          bodySmall: TextStyle(
            height: 1.2,
            fontFamily: 'ElMessiri',
            fontWeight: AppFont.medium,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
