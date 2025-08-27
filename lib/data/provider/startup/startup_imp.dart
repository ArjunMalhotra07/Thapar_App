import 'dart:convert';

import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/api_models/verifytoken/verifytoken.dart';
import 'package:thaparapp/data/model/cred/credential.dart';
import 'package:thaparapp/data/provider/startup/startup_abs.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/utils/constants/constants.dart';
import 'package:thaparapp/utils/constants/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartupImp implements StartupProvider {
  final BaseApiService _service;

  StartupImp({required BaseApiService service}) : _service = service;

  @override
  Future<Credential> fetchCredentials() async {
    await Future.delayed(const Duration(seconds: 2));
    final prefs = await SharedPreferences.getInstance();
    final String? creds = prefs.getString(AppConstants.credentials);
    if (creds == null) {
      return const Credential(jwt: '', refreshToken: '');
    }
    try {
      final Map<String, dynamic> credentialsJson = jsonDecode(creds);
      return Credential.fromJson(credentialsJson);
    } catch (e) {
      return const Credential(jwt: '', refreshToken: '');
    }
  }

  @override
  Future<VerifyTokenResponse> checkValidity({
    required String bearerToken,
  }) async {
    try {
      final response = await _service.getAPI(
        url: AppURL.jwtValidation,
        queryParams: null,
        bearerToken: bearerToken,
      ); // Use injected AppURL
      return VerifyTokenResponse.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> storeCredential({required Credential cred}) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      await prefs.setString(
        AppConstants.credentials,
        jsonEncode(cred.toJson()),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthResponse> refreshAccessToken({required String refreshToken}) async {
    try {
      final response = await _service.getAPI(
        url: AppURL.refreshToken,
        queryParams: null,
        bearerToken: refreshToken,
      ); // Use injected AppURL
      return AuthResponse.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
