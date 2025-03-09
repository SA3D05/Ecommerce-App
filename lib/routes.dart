import 'package:ecommerceapp/core/middleware/app_middleware.dart';
import 'package:ecommerceapp/view/screen/auth/forgot_password/forgot_password.dart';
import 'package:ecommerceapp/view/screen/auth/sign_up/verify_email_sign_up.dart';
import 'package:ecommerceapp/view/screen/auth/success.dart';
import 'package:ecommerceapp/view/screen/auth/login.dart';
import 'package:ecommerceapp/view/screen/auth/forgot_password/reset_password.dart';
import 'package:ecommerceapp/view/screen/auth/sign_up/sign_up.dart';
import 'package:ecommerceapp/view/screen/auth/forgot_password/verify_email_forgot_pass.dart';
import 'package:ecommerceapp/view/screen/change_language.dart';
import 'package:ecommerceapp/view/screen/home_screen.dart';
import 'package:ecommerceapp/view/screen/on_boarding.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/view/screen/products.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  // ====================== TEMP ROUTES ============================\\
  // GetPage(name: "/", page: () => const AddServer()),
  // ====================== ON BOARDING ============================\\

  GetPage(name: "/", page: () => const ChangeLanguage(), middlewares: [
    AppMiddleware(),
  ]),

  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),

  // ====================== AUTH ============================\\

  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.success, page: () => const Success()),
//
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(
      name: AppRoute.verifyEmailSignUp, page: () => const VerifyEmailSignUp()),
//
  GetPage(name: AppRoute.forgotPassword, page: () => const ForgotPassword()),
  GetPage(
      name: AppRoute.verifyEmailForgotPassword,
      page: () => const VerifyEmailForgotPassword()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),

  // ====================== HOME ============================\\

  GetPage(name: AppRoute.home, page: () => const HomeScreen()),
  GetPage(name: AppRoute.products, page: () => const Products()),

  // ====================== END ============================\\
];
