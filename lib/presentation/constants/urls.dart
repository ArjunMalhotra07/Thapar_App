import 'dart:io';

class AppURL {
  static String get baseURL {
    // if (Platform.isAndroid) {
    //   return "http://10.0.2.2:3000/api";
    // } else if (Platform.isIOS) {
    //   return "http://localhost:3000/api";
    // } else {
    //   return "http://localhost:3000/api";
    // }
    return "http://65.1.242.198/api";
  }

  static String get login => "$baseURL/login";
  static String get locations => "$baseURL/locations";

  static String get chat => "$baseURL/chat";
  static String get getHistory => "$baseURL/getHistory";

  static String get lostAndFound => "$baseURL/items";

  static String jwtValidation = "/verify";
  static String refreshToken = "/refresh";
}
