import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/api_models/verifytoken/verifytoken.dart';
import 'package:thaparapp/data/model/cred/credential.dart';
import 'package:thaparapp/data/model/user/user.dart';

abstract class StartupProvider {
  Future<Credential> fetchCredentials();
  Future<VerifyTokenResponse> checkValidity({required String bearerToken});
  Future<AuthResponse> refreshAccessToken({required String refreshToken});
  Future<void> storeCredential({required Credential cred});
  Future<void> storeUser({required User user});
  Future<void> storeToken({required String token});
  Future<User?> fetchUser();
  Future<String?> fetchToken();
  Future<void> clearUserData();
}
