import 'package:thaparapp/data/provider/auth/auth_abs.dart';
import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/presentation/constants/urls.dart';

class AuthImp implements AuthProvider {
  BaseApiService apiService;
  AuthImp({required this.apiService});

  @override
  Future<AuthResponse> login({required Map<String, dynamic> data}) async {
    try {
      String url = AppURL.login;
      final response = await apiService.postAPI(
        url: url,
        body: data,
        queryParams: null,
      );
      return AuthResponse.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
