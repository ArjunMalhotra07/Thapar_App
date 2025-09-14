import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/api_models/verifytoken/verifytoken.dart';
import 'package:thaparapp/data/model/cred/credential.dart';
import 'package:thaparapp/data/model/user/user.dart';
import 'package:thaparapp/data/provider/startup/startup_abs.dart';
import 'package:thaparapp/data/provider/startup/startup_imp.dart';

class StartupRepo {
  final StartupProvider startupProvider;

  StartupRepo({required this.startupProvider});

  Future<Credential> fetchCredentials() async {
    return await startupProvider.fetchCredentials();
  }

  Future<VerifyTokenResponse> checkValidity({
    required String bearerToken,
  }) async {
    return await startupProvider.checkValidity(bearerToken: bearerToken);
  }

  Future<void> storeCredentials({required Credential cred}) async {
    await startupProvider.storeCredential(cred: cred);
  }

  Future<AuthResponse> refreshAccessToken({required String bearerToken}) async {
    return await startupProvider.refreshAccessToken(refreshToken: bearerToken);
  }

  Future<void> storeUser({required User user}) async {
    await (startupProvider as StartupImp).storeUser(user: user);
  }

  Future<void> storeToken({required String token}) async {
    await (startupProvider as StartupImp).storeToken(token: token);
  }

  Future<User?> fetchUser() async {
    return await (startupProvider as StartupImp).fetchUser();
  }

  Future<String?> fetchToken() async {
    return await (startupProvider as StartupImp).fetchToken();
  }

  Future<void> clearUserData() async {
    await (startupProvider as StartupImp).clearUserData();
  }
}
