import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/api_models/verifytoken/verifytoken.dart';
import 'package:thaparapp/data/provider/startup/startup_abs.dart';
import 'package:thaparapp/data/model/cred/credential.dart';

class StartupLocal implements StartupProvider {
  @override
  Future<Credential> fetchCredentials() async {
    await Future.delayed(const Duration(seconds: 3));

    return const Credential(jwt: '', refreshToken: 'dummy_refresh_token');
  }

  @override
  Future<VerifyTokenResponse> checkValidity({required String bearerToken}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return VerifyTokenResponse(message: "valid", valid: true, userId: "agf", expiresIn: 1000);
  }

  @override
  Future<void> storeCredential({required Credential cred}) async {
    await Future.delayed(const Duration(milliseconds: 300));
  }

  @override
  Future<AuthResponse> refreshAccessToken({required String refreshToken}) {
    throw UnimplementedError();
  }
}
