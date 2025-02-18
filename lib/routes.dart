import 'package:ecommerceapp/core/middleware/app_middleware.dart';
import 'package:ecommerceapp/view/screen/auth/forgot_password/forgot_password.dart';
import 'package:ecommerceapp/view/screen/auth/sign_up/verify_email_sign_up.dart';
import 'package:ecommerceapp/view/screen/auth/success.dart';
import 'package:ecommerceapp/view/screen/auth/login.dart';
import 'package:ecommerceapp/view/screen/auth/forgot_password/reset_password.dart';
import 'package:ecommerceapp/view/screen/auth/sign_up/sign_up.dart';
import 'package:ecommerceapp/view/screen/auth/forgot_password/verify_email_forgot_pass.dart';
import 'package:ecommerceapp/view/screen/change_language.dart';
import 'package:ecommerceapp/view/screen/on_boarding.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => ChangeLanguage(), middlewares: [
    AppMiddleware(),
  ]),
  GetPage(name: AppRoute.login, page: () => Login()),
  GetPage(name: AppRoute.signUp, page: () => SignUp()),
  GetPage(name: AppRoute.forgotPassword, page: () => ForgotPassword()),
  GetPage(
      name: AppRoute.verifyEmailForgotPassword,
      page: () => VerifyEmailForgotPassword()),
  GetPage(name: AppRoute.verifyEmailSignUp, page: () => VerifyEmailSignUp()),
  GetPage(name: AppRoute.resetPassword, page: () => ResetPassword()),
  GetPage(name: AppRoute.success, page: () => Success()),
  GetPage(name: AppRoute.onBoarding, page: () => OnBoarding()),
];
