class AppUrl {
  // ====================== BASE ============================   ||
  static const String baseUrl = "http://192.168.11.102/ecom"; //||
  // ========================================================   ||

  // ====================== TEST ============================\\
  static const String testUrl = "$baseUrl/test.php";

  // ====================== AUTH ============================\\
  static const String signUp = "$baseUrl/auth/sign_up.php";
  static const String login = "$baseUrl/auth/login.php";
  static const String verifyCode = "$baseUrl/auth/verify_code.php";

  // ====================== FORGOT PASSWORD ============================\\
  static const String checkEmail =
      "$baseUrl/auth/forgot_password/check_email.php";
  static const String verifyCodeForgotPassword =
      "$baseUrl/auth/forgot_password/verify_code.php";
  static const String reserPassword =
      "$baseUrl/auth/forgot_password/reset_password.php";
}
