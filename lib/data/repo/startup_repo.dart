import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/api_models/verifytoken/verifytoken.dart';
import 'package:thaparapp/data/model/cred/credential.dart';
import 'package:thaparapp/data/provider/startup/startup_abs.dart';

class StartupRepo {
  final StartupProvider startupProvider;

  StartupRepo({required this.startupProvider});

  Future<Credential> fetchCredentials() async {
    return await startupProvider.fetchCredentials();
  }

  Future<VerifyTokenResponse> checkValidity({required String bearerToken}) async { 
    return await startupProvider.checkValidity(bearerToken: bearerToken);
  }

  Future<void> storeCredentials({required Credential cred}) async {
    await startupProvider.storeCredential(cred: cred);
  }
   Future<AuthResponse> refreshAccessToken({required String bearerToken}) async{
    return await startupProvider.refreshAccessToken(refreshToken: bearerToken);
  }
}