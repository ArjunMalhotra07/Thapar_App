
class AppURL {
  static String baseURL = "http://10.0.2.2:80/v2";
  static String auth = "$baseURL/auth";
  static String login = "$auth/login";
  static String jwtValidation = "$auth/verify";
  static String refreshToken = "$auth/refresh";
}
