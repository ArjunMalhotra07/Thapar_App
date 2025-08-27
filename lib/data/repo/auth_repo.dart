import 'package:thaparapp/data/provider/auth/auth_abs.dart';
import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';

class AuthRepo {
  AuthProvider authProvider;
  AuthRepo({required this.authProvider});

  Future<AuthResponse> login({required Map<String, dynamic> data}) async {
    return await authProvider.login(data: data);
  }
}
