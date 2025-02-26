class AppUrl {
  // ====================== BASE ============================   ||
  static String baseUrl = "http://192.168.11.102/ecom"; //||
  // ===================================================/=====   ||

  // ====================== TEST ============================\\
  static String testUrl = "$baseUrl/test.php";

  // ====================== AUTH ============================\\
  static String signUp = "$baseUrl/auth/sign_up.php";
  static String login = "$baseUrl/auth/login.php";
  static String verifyCode = "$baseUrl/auth/verify_code.php";

  // ====================== FORGOT PASSWORD ============================\\
  static String checkEmail = "$baseUrl/auth/forgot_password/check_email.php";
  static String verifyCodeForgotPassword =
      "$baseUrl/auth/forgot_password/verify_code.php";
  static String reserPassword =
      "$baseUrl/auth/forgot_password/reset_password.php";
}
