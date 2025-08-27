import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/api_models/verifytoken/verifytoken.dart';
import 'package:thaparapp/data/model/cred/credential.dart';

abstract class StartupProvider {
  Future<Credential> fetchCredentials();
  Future<VerifyTokenResponse> checkValidity({required String bearerToken});
  Future<AuthResponse> refreshAccessToken({required String refreshToken});
  Future<void> storeCredential({required Credential cred});
}
