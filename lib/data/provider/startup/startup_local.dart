import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/api_models/verifytoken/verifytoken.dart';
import 'package:thaparapp/data/provider/startup/startup_abs.dart';
import 'package:thaparapp/data/model/cred/credential.dart';

class StartupLocal implements StartupProvider {
  @override
  Future<Credential> fetchCredentials() async {
    await Future.delayed(const Duration(seconds: 3));
    Credential newlyOnboarded = const Credential(jwt: null, refreshToken: null);
    Credential validUser = const Credential(
      jwt: 'dummy_jwt',
      refreshToken: 'dummy_refresh_token',
    );
    return validUser;
  }

  @override
  Future<VerifyTokenResponse> checkValidity({
    required String bearerToken,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return VerifyTokenResponse(
      message: "valid",
      valid: true,
      userId: "agf",
      expiresIn: 1000,
    );
  }

  @override
  Future<void> storeCredential({required Credential cred}) async {
    await Future.delayed(const Duration(milliseconds: 300));
  }

  @override
  Future<AuthResponse> refreshAccessToken({
    required String refreshToken,
  }) async {
    bool shouldThrowError = true;
    if (shouldThrowError) {
      throw UnimplementedError();
    }
    await Future.delayed(const Duration(milliseconds: 100));
    AuthResponse res = AuthResponse(
      message: "succes",
      jwt: "dummy_jwt",
      refreshToken: "dummy_refreshToken",
      data: "data",
    );
    return res;
  }
}
