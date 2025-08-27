import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:thaparapp/data/repo/startup_repo.dart';
import 'package:thaparapp/network/auth_interceptor.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/network/exceptions.dart';

class NetworkApiService implements BaseApiService {
  final Dio _dio;
  final Logger logger = Logger();
  final StartupRepo? startupRepo;

  NetworkApiService({this.startupRepo})
    : _dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 20),
          sendTimeout: const Duration(seconds: 20),
          headers: {'Content-Type': 'application/json'},
        ),
      ) {
    // Add logging interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Skip auth interceptor for refresh token requests
          if (options.extra['skipAuthInterceptor'] == true) {
            logger.i('Request [${options.method}] ${options.uri} [SKIP AUTH]');
          } else {
            logger.i('Request [${options.method}] ${options.uri}');
          }
          logger.i('Request Headers: ${options.headers}');
          logger.i('Request Data: ${options.data}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          logger.i('Response [${response.statusCode}] ${response.data}');
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          logger.e('Error: ${e.message}');
          if (e.response != null) {
            logger.e('Error Status: ${e.response!.statusCode}');
            logger.e('Error Response Body: ${e.response!.data}');
          }
          return handler.next(e);
        },
      ),
    );

    // Add auth interceptor if startupRepo is provided
    if (startupRepo != null) {
      _dio.interceptors.add(
        AuthInterceptor(startupRepo: startupRepo!, dio: _dio),
      );
    }
  }

  @override
  Future getAPI({
    required String url,
    required dynamic queryParams,
    required String? bearerToken,
  }) async {
    try {
      final options = Options(
        headers: {
          if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
        },
      );
      final response = await _dio.get(
        url,
        options: options,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future postAPI({
    required String url,
    required dynamic body,
    required dynamic queryParams,
    String? bearerToken,
  }) async {
    try {
      final options = Options(
        headers: {
          if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
        },
      );
      final response = await _dio.post(
        url,
        data: body,
        options: options,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future putAPI({
    required String url,
    required dynamic body,
    required dynamic queryParams,
    String? bearerToken,
  }) async {
    try {
      final options = Options(
        headers: {
          if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
        },
      );
      final response = await _dio.put(
        url,
        data: body,
        options: options,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future deleteAPI({
    required String url,
    required dynamic body,
    required dynamic queryParams,
    String? bearerToken,
  }) async {
    try {
      final options = Options(
        headers: {
          if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
        },
      );
      final response = await _dio.delete(
        url,
        data: body,
        options: options,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  Never _handleDioError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      throw RequestTimeoutException(message: "Please try again later!");
    } else if (e.type == DioExceptionType.connectionError) {
      throw Exception("Can't make an API call");
    } else if (e.response != null) {
      switch (e.response!.statusCode) {
        case 400:
          final jsonResponse = e.response!.data;
          if (jsonResponse is Map<String, dynamic> &&
              jsonResponse.containsKey('errors')) {
            List<dynamic> errors = jsonResponse['errors'];
            String combinedErrors = errors
                .map((error) => error['message'].toString())
                .join('\n');
            throw BadRequestException(message: combinedErrors);
          } else {
            String message =
                jsonResponse['message']?.toString() ?? 'Bad Request';
            throw BadRequestException(message: message);
          }
        case 401:
          final jsonResponse =
              e.response!.data['message']?.toString() ?? 'Unauthorized';
          throw UnauthorizedException(message: jsonResponse);
        case 404:
          final jsonResponse =
              e.response!.data['message']?.toString() ?? 'Not Found';
          throw PageNotFoundException(message: jsonResponse);
        case 500:
          final jsonResponse = e.response?.data['message']?.toString() ?? 
              'Internal Server Error';
          throw InternalServerErrorException(message: jsonResponse);
        default:
          throw FetchDataException(
            message:
                'Error occurred while fetching data from server. Code ${e.response!.statusCode}',
          );
      }
    } else {
      throw FetchDataException(
        message: 'Unexpected error occurred: ${e.message}',
      );
    }
  }
}
