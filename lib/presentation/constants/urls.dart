class AppURL {
  static String baseURL = "http://10.0.2.2:3000/api";
  static String chat = "$baseURL/chat";
  static String getHistory = "$baseURL/getHistory";
  static String locations = "$baseURL/locations";
  static String auth = "$baseURL/auth";
  static String login = "$auth/login";
  static String jwtValidation = "$auth/verify";
  static String refreshToken = "$auth/refresh";
}
