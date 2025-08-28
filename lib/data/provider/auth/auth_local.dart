import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/provider/auth/auth_abs.dart';

class AuthLocal implements AuthProvider {
  @override
  Future<AuthResponse> login({required Map<String, dynamic> data}) async {
    AuthResponse response = AuthResponse(
      message: "success",
      jwt: "dummy_jwt",
      refreshToken: "dummy_refresh_token",
      data: data,
    );
    try {
      await Future.delayed(const Duration(seconds: 3));
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
