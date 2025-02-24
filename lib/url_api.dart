class AppUrl {
  // =========================================================== server url
  static const String baseUrl = "http://192.168.11.102/ecom";

  // =========================================================== test url
  static const String testUrl = "$baseUrl/test.php";

  // =========================================================== AUTH LINKS
  static const String signUp = "$baseUrl/auth/sign_up.php";
  static const String login = "$baseUrl/auth/login.php";
  static const String verifyCode = "$baseUrl/auth/verify_code.php";
}
