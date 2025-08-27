import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:thaparapp/data/model/api_models/authresponse/auth_response.dart';
import 'package:thaparapp/data/model/cred/credential.dart';
import 'package:thaparapp/data/repo/startup_repo.dart';
import 'package:thaparapp/presentation/constants/urls.dart';
import 'package:thaparapp/utils/navigation_service.dart';

class AuthInterceptor extends Interceptor {
  final StartupRepo startupRepo;
  final Logger logger = Logger();
  final Dio dio;
  
  AuthInterceptor({required this.startupRepo, required this.dio});

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Check if error is 401 Unauthorized
    if (err.response?.statusCode == 401) {
      logger.w('401 Unauthorized - Attempting token refresh');
      
      try {
        // Get stored credentials
        final cred = await startupRepo.fetchCredentials();
        
        if (cred.refreshToken.isEmpty) {
          logger.e('No refresh token available, redirecting to login');
          NavigationService.navigateToLogin();
          return handler.next(err);
        }

        // Attempt to refresh the token
        final refreshResponse = await _refreshToken(cred.refreshToken);
        
        if (refreshResponse != null) {
          // Store new tokens
          await startupRepo.storeCredentials(
            cred: cred.copyWith(
              jwt: refreshResponse.jwt!,
              refreshToken: refreshResponse.refreshToken!,
            ),
          );
          
          // Retry the original request with new token
          final originalRequest = err.requestOptions;
          originalRequest.headers['Authorization'] = 'Bearer ${refreshResponse.jwt}';
          
          logger.i('Token refreshed successfully, retrying request');
          
          final response = await dio.fetch(originalRequest);
          return handler.resolve(response);
        } else {
          logger.e('Token refresh failed, redirecting to login');
          NavigationService.navigateToLogin();
          return handler.next(err);
        }
      } catch (e) {
        logger.e('Token refresh error: $e');
        // If refresh fails, clear stored tokens and redirect to login
        await startupRepo.storeCredentials(
          cred: const Credential(jwt: '', refreshToken: ''),
        );
        NavigationService.navigateToLogin();
        return handler.next(err);
      }
    } else {
      // Not a 401 error, pass through
      return handler.next(err);
    }
  }

  Future<AuthResponse?> _refreshToken(String refreshToken) async {
    try {
      final response = await dio.get(
        AppURL.refreshToken,
        options: Options(
          headers: {'Authorization': 'Bearer $refreshToken'},
          // Don't use the interceptor for refresh request to avoid infinite loop
          extra: {'skipAuthInterceptor': true},
        ),
      );
      
      return AuthResponse.fromJson(response.data);
    } catch (e) {
      logger.e('Refresh token request failed: $e');
      return null;
    }
  }
}