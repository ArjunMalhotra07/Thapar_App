import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';

abstract class AuthProvider {
  Future<AuthResponse> login({required Map<String, dynamic> data});
}
