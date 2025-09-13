import 'dart:convert';

import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/api_models/verifytoken/verifytoken.dart';
import 'package:thaparapp/data/model/cred/credential.dart';
import 'package:thaparapp/data/model/user/user.dart';
import 'package:thaparapp/data/provider/startup/startup_abs.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/presentation/constants/constants.dart';
import 'package:thaparapp/presentation/constants/urls.dart';
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
      return const Credential(jwt: null, refreshToken: null);
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

  Future<void> storeUser({required User user}) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      await prefs.setString(
        'user_data',
        jsonEncode(user.toJson()),
      );
    } catch (e) {
      rethrow;
    }
  }
  
  Future<void> storeToken({required String token}) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      await prefs.setString('jwt_token', token);
    } catch (e) {
      rethrow;
    }
  }

  Future<User?> fetchUser() async {
    final prefs = await SharedPreferences.getInstance();
    final String? userData = prefs.getString('user_data');
    if (userData == null) {
      return null;
    }
    try {
      final Map<String, dynamic> userJson = jsonDecode(userData);
      return User.fromJson(userJson);
    } catch (e) {
      return null;
    }
  }
  
  Future<String?> fetchToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwt_token');
  }

  Future<void> clearUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('user_data');
    await prefs.remove('jwt_token');
    await prefs.remove(AppConstants.credentials);
  }
}
